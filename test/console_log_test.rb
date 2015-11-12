require 'test_helper'

module ConsoleLog
  class ConsoleLogTest < ActiveSupport::TestCase
    test "#instance returns the singleton" do
      assert_instance_of ConsoleLog::Base, ConsoleLog.instance
    end

    test "forwards known methods to the instance" do
      message = "test message"
      mock = MiniTest::Mock.new
      mock.expect :append, nil, [message]

      ConsoleLog.instance.stub :append, -> (arg) { mock.append arg } do
        ConsoleLog.append message
      end

      assert mock.verify
    end

    test "unknown methods raise errors" do
      assert_raise NoMethodError do
        ConsoleLog.unknown_method
      end
    end
  end
end