module ConsoleLog
  class Engine < ::Rails::Engine
    initializer 'console_log.include_helpers' do
      ActiveSupport.on_load :action_controller do
        ActionController::Base.send :include, ConsoleLog::Helpers
      end

      ActiveSupport.on_load :active_record do
        ActiveRecord::Base.send :include, ConsoleLog::Helpers
      end

      ActiveSupport.on_load :action_view do
        ActionView::Base.send :include, ConsoleLog::Helpers
      end
    end
  end
end