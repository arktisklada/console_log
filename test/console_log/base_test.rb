require 'test_helper'

module ConsoleLog
  class ConsoleLogTest < ActiveSupport::TestCase
    def setup
      @instance = ConsoleLog.instance
      @instance.reset
    end

    test "initialize with an empty queue" do
      assert_empty @instance.queue
    end

    test "queue is an array" do
      assert_instance_of Array, @instance.queue
    end

    test "#reset empties the queue" do
      test_message = "test message"
      @instance.append(test_message)

      @instance.reset

      assert_empty @instance.queue
    end

    test "#append adds messages to the queue" do
      test_message = "test message"

      @instance.append(test_message)

      assert_includes @instance.queue, test_message
    end

    test "#append adds multiple given messages to the queue" do
      test_message_1 = "test message 1"
      test_message_2 = "test message 2"
      test_message_3 = "test message 3"

      @instance.append test_message_1, test_message_2, test_message_3

      assert_equal @instance.queue, [test_message_1, test_message_2, test_message_3]
    end

    test "#append adds messages to the existing queue" do
      test_message_1 = "test message 1"
      test_message_2 = "test message 2"
      @instance.append test_message_1

      @instance.append test_message_2

      assert_equal @instance.queue, [test_message_1, test_message_2]
    end

    test "#flush_queue clears the queue" do
      @instance.append("test message")

      @instance.flush_queue

      assert_empty @instance.queue
    end

    test "#flush_queue returns the queue" do
      test_message = "test message"
      @instance.append(test_message)

      queue = @instance.flush_queue

      assert_equal queue, [test_message]
    end
  end
end