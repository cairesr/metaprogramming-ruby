require 'spec_helper'

describe Methods::Computer do
  describe '#initialize' do
    context 'when executed without data_source instance' do
      it { is_expected.not_to respond_to :mouse }

      it { is_expected.not_to respond_to :cpu }

      it { is_expected.not_to respond_to :keyboard }
    end

    context 'when executed with a data_source instance' do
      let(:fake_data_source) { Methods::FakeDataSource.new }
      subject { Methods::Computer.new(fake_data_source) }

      it { is_expected.to respond_to :mouse }

      it { is_expected.to respond_to :cpu }

      it { is_expected.to respond_to :keyboard }
    end
  end
end