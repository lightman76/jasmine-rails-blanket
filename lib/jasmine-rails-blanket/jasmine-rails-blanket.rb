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

    def get_blanketjs_option(opt)
      blanket_js=jasmine_config['blanketjs_coverage']
      if blanket_js
        return blanket_js[opt]
      end
      return nil
    end

    def blanketjs_coverage_path
      return get_blanketjs_option('coverage_path')
    end

    def blanketjs_flags
      return get_blanketjs_option('flags')
    end
  end
end
