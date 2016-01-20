require 'spec_helper'

describe Meta::Computer do
  describe '#initialize' do
    context 'when executed without data_source instance' do
      it { is_expected.not_to respond_to :mouse }

      it { is_expected.not_to respond_to :cpu }

      it { is_expected.not_to respond_to :keyboard }
    end

    context 'when executed with a data_source instance' do
      let(:fake_data_source) { Meta::FakeDataSource.new }
      subject { Meta::Computer.new(fake_data_source) }

      it { is_expected.to respond_to :mouse }

      it { is_expected.to respond_to :cpu }

      it { is_expected.to respond_to :keyboard }
    end
  end
end