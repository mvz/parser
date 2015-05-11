require 'helper'
require 'parse_helper'

class TestSourceComment < Minitest::Test
  include ParseHelper

  def test_to_hash
    buf = Parser::Source::Buffer.new("<input>")
    buf.source = "1"
    ast = parser_for_ruby_version('1.8').parse(buf)
    assert_equal [:operator, :expression], ast.loc.to_hash.keys
  end
end
