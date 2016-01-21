require 'spec_helper'

describe Methods::Refinements::MyClass do
  describe '#my_method' do
    context 'without a refinement' do
      subject { Methods::Refinements::MyClass.new.my_method }

      it { is_expected.to match /original my_method/ }
    end

    context 'with MyClassRefinement applied to a class' do
      subject { Methods::Refinements::MyClassWithRefinedMethod.new.refined_my_method_test }

      it { is_expected.to match /refined my_method/ }
    end

    context 'with MyClassRefinement applied to a module' do
      subject { Methods::Refinements::MyModuleWithRefinedMethod.refined_my_method_test }

      it { is_expected.to match /refined my_method/ }
    end
  end
end