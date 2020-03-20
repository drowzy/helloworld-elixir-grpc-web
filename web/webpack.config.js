  const path = require('path');

  module.exports = {
    mode: 'development',
    entry: {
      main: './client.js'
    },
    devServer: {
      contentBase: './',
      proxy: {
        '/grpc': {
          target: 'http://localhost:4000',
          pathRewrite: {'^/grpc' : ''}
        }
      }
    },
    plugins: [],
    output: {
      filename: 'main.js',
      path: path.resolve(__dirname, 'dist'),
    },
  };
