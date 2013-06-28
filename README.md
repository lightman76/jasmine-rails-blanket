# Jasmine-Rails-Blanket

This gem adds blanket code coverage support to the jasmine-rails gem's test runner page.  The code coverage details
appear below the test results when you access the jasmine specs page.

## Installation

Add this line to your application's Gemfile in the development/test group:

    gem 'jasmine-rails-blanket'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jasmine-rails-blanket

## Usage

Add the following to your jasmine.yml file

    blanketjs_coverage:
      enabled: true

You can also include any of the config items supported by blanketjs (see blanket's [config.js](https://github.com/alex-seville/blanket/blob/master/src/config.js)
for options) - just leave off the 'data-' prefixes and add them to a config key under the blanketjs_coverage key

Example:

    blanketjs_coverage:
      enabled: true
      config:
        cover-only: "assets_dev/app/"
        cover-flags: "debug"


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
