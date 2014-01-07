gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'

class Minitest::Test
  def self.runnable_methods
    methods_matching(/^test_/)
  end
end

class FillInTheBlankTest < Minitest::Test
  def equal_to_what(variable)
    begin
      raise
    rescue => e
      failure = Exception.new("Make an assertion about `#{variable}`.")
      failure.set_backtrace e.backtrace[1..-1]
      raise failure
    end
  end
end

