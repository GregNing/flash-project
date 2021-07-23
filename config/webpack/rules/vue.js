const path = require('path');
const webpack = require('webpack');
const { VueLoaderPlugin } = require('vue-loader');
const MiniCssExtractPlugin = require('mini-css-extract-plugin');

module.exports = {
  module: {
    generator: {
      'asset/resource': {
        filename: 'media/[name]-[hash][ext]'
      }
    },
    rules: [
      {
        // test: /\.vue$/,
        test: /\.vue(\.erb)?$/,
        use: { loader: 'vue-loader' }
      },
      {
        test: /\.css$/i,
        use: ["css-loader"],
      },
      {
        test: /\.s[ac]ss$/i,
        use: ["css-loader", "postcss-loader", { loader: "sass-loader", options: { implementation: require("sass") } },
        ],
      },
    ]
  },
  plugins: [
    // See https://github.com/moment/moment/issues/2979#issuecomment-189899510
    new webpack
      .ContextReplacementPlugin(/\.\/locale$/, 'empty-module', false, /js$/),
    new VueLoaderPlugin(),
    new MiniCssExtractPlugin(),

  ],
  resolve: {
    modules: [
      path.resolve('./app/javascript/'),
    ],
    alias: {
    },
    extensions: ['.js', '.vue', '.json'],
  },
};
