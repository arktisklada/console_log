module ConsoleLog
  class << self
    def method_missing(method, *args)
      return instance.send(method, *args) if instance.respond_to?(method)
      super
    end

    def instance
      ConsoleLog::Base.instance
    end
  end
end

require 'console_log/base'
require 'console_log/helpers'
require 'console_log/engine'