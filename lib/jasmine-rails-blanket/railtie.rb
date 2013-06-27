module JasmineRailsBlanket
  class Engine < Rails::Engine
    isolate_namespace JasmineRailsBlanket
    initializer "application_controller.initialize_JasmineRailsBlanket", :after => 'JasmineRails' do
      begin
        JasmineRails::SpecRunnerController.class_eval do
          def index
            JasmineRails.reload_jasmine_config
            render :template => 'jasmine_rails/spec_runner/index', :layout => 'layouts/jasmine_rails/spec_runner_blanket'
          end
        end
      rescue Exception => e
        puts "Exception occurred while overriding controller - #{e.message}\n#{e.backtrace}\n#{e.inspect}"
        raise e #re-raise the error
      end
    end
  end
end
