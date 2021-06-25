const { webpackConfig } = require('@rails/webpacker')
//const webpack = require('webpack')

// webpackConfig.plugins.prepend(
//   'Provide',
//   new webpack.ProvidePlugin({
//     $: 'jquery',
//     jQuery: 'jquery',
//     jquery: 'jquery',
//     Popper: ['popper.js', 'default']
//   })
// )
// 
// webpackConfig.loaders.append('jquery', {
//   test: require.resolve('jquery'),
//   loader: 'expose-loader',
//   options: {
//     exposes: ['$', 'jQuery']
//   }
// })

// webpackConfig.module = {
//   rules: [
//     {
//       test: require.resolve("jquery"),
//       loader: "expose-loader",
//       options: {
//         // For `underscore` library, it can be `_.map map` or `_.map|map`
//         exposes: "jquery",
//       },
//     },
//   ],
// };

//module.exports = merge(webpackConfig, customConfig)
module.exports = webpackConfig
