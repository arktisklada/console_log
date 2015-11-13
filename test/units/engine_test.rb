require 'test_helper'

module ConsoleLog
  class ConsoleLogEngineTest < ActionController::TestCase
    tests ApplicationController

    test "console_log is available to controllers" do
      assert_respond_to @controller, :console_log
    end
  end


  class ConsoleLogModelTest < ActiveSupport::TestCase
    test "console_log is available to models" do
      test_model = TestModel.new

      assert_respond_to test_model, :console_log
    end
  end


  class ConsoleLogViewtest < ActionView::TestCase
    test "console_log is available to views" do
      render template: 'layouts/application'

      assert_respond_to @view, :console_log
    end
  end
end