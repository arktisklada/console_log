require 'pry'
require 'test_helper'

module ConsoleLog
  class ConsoleLogHelperTest < ActionDispatch::IntegrationTest
    def setup
      ConsoleLog.instance.reset
    end

    test "rendering javascript with console.log present" do
      get '/'

      message = /console\.log\(\"test\ message\"\);/
      assert_match message, @response.body
    end
  end
end