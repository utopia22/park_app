process.env.NODE_ENV = process.env.NODE_ENV || 'production'

const environment = require('./environment')

module.exports = environment.toWebpackConfig()

config.assets.js_compressor = Uglifier.new(harmony: true)
