const { webpackConfig } = require('@rails/webpacker')
const { merge } = require('webpack-merge')
const vueConfig = require('./rules/vue');

module.exports = merge(vueConfig, webpackConfig)
