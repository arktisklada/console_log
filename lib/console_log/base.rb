require 'singleton'

module ConsoleLog
  class Base
    include Singleton

    attr_reader :queue

    def initialize
      reset
    end

    def reset
      @queue = []
    end

    def append(*messages)
      @queue += messages
    end

    def flush_queue
      queue = @queue.dup
      @queue.clear

      queue
    end
  end
end