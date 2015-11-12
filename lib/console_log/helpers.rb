module ConsoleLog
  module Helpers
    def self.included(base)
      base.send :include, InstanceMethods
    end

    module InstanceMethods
      def console_log(*args)
        ConsoleLog.instance.append(*args)
      end

      def _console_log_flush_queue
        ConsoleLog.instance.flush_queue
      end
    end
  end
end