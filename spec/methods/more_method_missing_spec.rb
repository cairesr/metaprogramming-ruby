describe Methods::MoreMethodMissing do
  describe '#method_missing' do
    it { is_expected.to respond_to :method_missing }
  end
end