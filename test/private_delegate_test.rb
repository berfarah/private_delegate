require 'test_helper'
require 'minitest/spec'

class PrivateDelegateTest < Minitest::Test
  extend Minitest::Spec::DSL

  let(:subject) do
    Class.new do
      def foo
        Struct.new(:baz).new
      end

      private_delegate :baz, to: :foo
    end
  end

  it "makes private methods" do
    assert_equal true, subject.private_method_defined?(:baz)
  end
end
