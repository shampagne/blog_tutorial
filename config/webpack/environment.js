const { environment } = require('@rails/webpacker')
const webpack = require('webpack')
environment.plugins.prepend(
    new webpack.ProvidePlugin({
        $: 'jquery',
        jQuery: 'jquery',
        Popper: 'popper.js'
    })
)
module.exports = environment
