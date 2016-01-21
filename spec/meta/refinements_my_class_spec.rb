require 'spec_helper'

describe Meta::Refinements::MyClass do
  describe '#my_method' do
    context 'without a refinement' do
      subject { Meta::Refinements::MyClass.new.my_method }

      it { is_expected.to match /original my_method/ }
    end

    context 'with MyClassRefinement applied' do
      subject { Meta::Refinements::MyClassWithRefinedMethod.new.refined_my_method_test }

      it { is_expected.to match /refined my_method/ }
    end
  end
end