require 'jasmine-rails'
require "jasmine_rails/engine"

JasmineRails.class_eval do
  class << self
    def enable_blanketjs_coverage
      blanket_js=jasmine_config['blanketjs_coverage']
      if blanket_js
        return blanket_js['enabled']
      end
      return false
    end

    def get_blanketjs_options
      blanket_js=jasmine_config['blanketjs_coverage']
      opts=' '
      if blanket_js && blanket_js['enabled'] && blanket_js['config']
        config=blanket_js['config']
        config.keys.each do |key|
          opts+="data-#{key}='#{config[key]}' "
        end
      end
      return opts
    end
  end
end
