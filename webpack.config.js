var webpack = require('webpack');
var path = require('path');
var BUILD_DIR = './src';

module.exports = {
  entry: {
   public : ['./src/appPublic']
 },
 output: {
  path: path.resolve(__dirname, BUILD_DIR),
  filename: '[name].bundle.js',
  chunkFilename: '[name].chunk.js',
  publicPath: '/src'
},
resolve: {
  modulesDirectories: ['node_modules'],
  extensions: ['', '.ls', '.js']
},
module: {
        loaders: [
            { test: /\.css$/, loader: "style-loader!css-loader" }
        ]
    }
};
