require 'minitest/autorun'
require '../app'

class ReadTest < Minitest::Test
  Dir.foreach("../testData") do |file|
    assert_equal read(file), file
  end
end