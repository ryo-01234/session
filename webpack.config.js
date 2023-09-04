const path    = require("path")
const webpack = require("webpack")
const mode = process.env.NODE_ENV === 'development' ? 'development' : 'production';

module.exports = {
  mode,
  entry: {
    application: "./app/javascript/application.js"
  },
    optimaization:{
      moduleIDs: 'deterministic'
  },
  output: {
    filename: "[name].js",
    sourceMapFilename: "[file].map",
    path: path.resolve(__dirname, '..', '..', "app/assets/builds"),
  },
  plugins: [
    new webpack.optimize.LimitChunkCountPlugin({
      maxChunks: 1
    })
  ],
  module: {
    rules: [
      {
      test: /\.(js)$/,
      exclude: /node_modules/,
      use: ['babel-loader'],
      },
      {
        test: /\.(png|jpe?g|gif|eot|woff2|woff|ttf|svg)$1/,
        use: 'file-loader'
      }
    ]
  }
}
