process.env.NODE_ENV = process.env.NODE_ENV || 'development'

const environment = require('./environment')

environment.config.merge({
    mode: 'development'
  })
  
  module.exports = environment.toWebpackConfig();