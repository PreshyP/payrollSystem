process.env.NODE_ENV = process.env.NODE_ENV || 'production'

const environment = require('./environment')
environment.config.merge({
    mode: 'production'
  });
module.exports = environment.toWebpackConfig();
