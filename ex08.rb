module Bar
  def foo
    "bar.foo"
  end
end

module Baz
  def foo
    "baz.foo"
  end
end

class MyClass
  include Baz
  include Bar

  attr_accessor :name
  def initialize(new_name)
    @name = new_name
  end
end

obj = MyClass.new "test"
p obj.foo