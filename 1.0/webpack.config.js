var webpack = require('webpack');
var path = require('path');
var BUILD_DIR = './assets';

module.exports = {
  entry: {
   vendor: ['angular']
  },
  output: {
    path: path.resolve(__dirname, BUILD_DIR),
    filename: '[name].bundle.js',
    chunkFilename: '[name].chunk.js',
    publicPath: '/assets'
  },
    externals: {
    'jquery': 'jQuery'
  },
   resolve: {
    modulesDirectories: ['modules', 'node_modules'],
    extensions: ['', '.ls', '.js']
  }
};
