const fs = require('fs');
const fetch = require('node-fetch');

const outputDir = process.env.OUTPUT_DIR;

const api = process.env.DIGITALOCEAN_API_BASE;
const request_options = {
  headers: {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer ' + process.env.DIGITALOCEAN_TOKEN
  }
};

function fetchAll(resource, dataKey, endpoint) {
  let url = endpoint || (api + resource);
  let key = dataKey || resource;

  let result = [];
  let promise = new Promise((resolve, reject) => {
    fetch(url, request_options)
    .then(response => response.json())
    .then(data => {
      result = result.concat(data[key]);
      if (data.links.pages && data.links.pages.next) {

        return fetchAll(resource, key, data.links.pages.next)
                .then(data => {
                  result = result.concat(data);
                  resolve(result);
                }, reject);
      } else {
        resolve(result);
      }
    }, reject);
  });

  return promise;
}

function arrayToString(values, key) {
  return values.map(item => {
    return `
      variable "do_${key}_${item.default}" {
        description = "${item.description}"
        default = "${item.default}"
      }
    `;
  }).join('');
}

function sectionHeading(heading) {
  return `${"##############################".substr(0, heading.length + 8)}
  ##  ${heading}
  #

  `;
}

function writeOutput(result) {
  fs.mkdirSync(outputDir);

  for(let key in result) {
    fs.writeFileSync(outputDir + '/' + 'do_' + key + '.tf', result[key], 'utf8');
  }
}

let sizes = new Promise((resolve, reject) => {
  fetchAll('sizes')
  .then(result => {
    let output = result.map(item => {
      let memory = item.memory < 1024
                    ? (item.memory + "MB")
                    : (item.memory/1024 + "GB");

      let disk = item.disk < 1000
                  ? (item.disk + "GB")
                  : (item.disk/1024 + "TB")

      let price = Math.round(item.price_monthly);

      return {
        default: item.slug,
        description: `${memory} RAM; ${item.vcpus} CPU; ${disk} SSD - $${price}/mo`
      }
    });

    resolve(output);
  })
  .catch(error => reject(error));
});

let regions = new Promise((resolve, reject) => {
  fetchAll('regions')
  .then(result => {
    let output = result.map(item => {
      return {
        default: item.slug,
        description: item.name
      }
    });

    resolve(output);
  })
  .catch(error => reject(error));
});

let distributions = new Promise((resolve, reject) => {
  fetchAll('images?type=distribution', 'images')
  .then(result => {
    let output = result.map(item => {
      return {
        default: item.slug,
        description: `${item.distribution} ${item.name}`
      }
    });

    resolve(output);
  })
  .catch(error => reject(error));
});

let applications = new Promise((resolve, reject) => {
  fetchAll('images?type=application', 'images')
  .then(result => {
    let output = result.map(item => {
      return {
        default: item.slug,
        description: item.name
      }
    })

    resolve(output);
  })
  .catch(error => reject(error));
});

Promise.all([sizes, regions, distributions, applications])
.then(values => {
  let [sizes, regions, distributions, applications] = values;

  let sizesAsString = sectionHeading("Droplet Sizes") + arrayToString(sizes, 'size');
  let regionsAsString = sectionHeading("DigitalOcean Regions") + arrayToString(regions, 'region');
  let distributionsAsString = sectionHeading("Image Distributions") + arrayToString(distributions, 'distibution');
  let applicationsAsString = sectionHeading("One Click Applications") + arrayToString(applications, 'application');

  writeOutput({
    sizes: sizesAsString,
    regions: regionsAsString,
    distributions: distributionsAsString,
    applications: applicationsAsString,
  });
});
