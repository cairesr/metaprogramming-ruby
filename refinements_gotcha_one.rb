module Meta
  class MyClass
    def my_method
      puts "original my_method()"
    end

    def another_method
      my_method
    end
  end

  module MyClassRefinement
    refine MyClass do
      def my_method
        puts "refined my_method"
      end
    end
  end
module Meta

using Meta::MyClassRefinement

Meta::MyClass.new.my_method
Meta::MyClass.new.another_method