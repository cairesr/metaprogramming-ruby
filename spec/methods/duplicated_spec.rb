require 'spec_helper'

describe Methods::DuplicatedComputer do
  describe "respond_to?" do
    let(:fake_data_source) { Methods::FakeDataSource.new }
    subject { Methods::DuplicatedComputer.new(1, fake_data_source) }

    it { is_expected.to respond_to(:mouse) }
  end
end