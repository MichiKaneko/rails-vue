const { environment } = require('@rails/webpacker')
const { VueLoaderPlugin } = require('vue-loader')
const vue = require('./loaders/vue')
const jquery = require('./plugins/jquery')

environment.plugins.prepend('jquery', jquery)
environment.plugins.prepend('VueLoaderPlugin', new VueLoaderPlugin())
environment.loaders.prepend('vue', vue)
environment.config.resolve.alias = { 'vue$': 'vue/dist/vue.esm.js' }; 
module.exports = environment
