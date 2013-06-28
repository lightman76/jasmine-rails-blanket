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
      if blanket_js
        if blanket_js['enabled']
          blanket_js.keys.each do |key|
            if key != 'enabled'
              opts+="data-#{key}='#{blanket_js[key]}' "
            end
          end
        end
      end
      return opts
    end
  end
end
