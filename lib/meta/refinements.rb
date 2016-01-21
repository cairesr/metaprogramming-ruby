module Meta
  module Refinements
    class MyClass
      def my_method
        'original my_method()'
      end

      def another_method
        my_method
      end
    end

    module MyClassRefinement
      refine MyClass do
        def my_method
          'refined my_method'
        end
      end
    end

    class MyClassWithRefinedMethod
      using MyClassRefinement

      def refined_my_method_test
        MyClass.new.my_method
      end
    end

    module MyModuleWithRefinedMethod
      using MyClassRefinement

      class << self
        def refined_my_method_test
          MyClass.new.my_method
        end
      end
    end
  end
end