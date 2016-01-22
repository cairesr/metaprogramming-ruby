describe Methods::IcecreamOnMethodMissing do
  describe '#respond_to?' do
    context 'with undefined flavor method' do
      subject { Methods::IcecreamOnMethodMissing.new }

      it { is_expected.to_not respond_to :flavor }
    end
  end
end