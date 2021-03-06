describe Methods::ModuleIncluded do
  context 'when two modules are included' do
    context 'with same method names' do
      subject { Methods::ModuleIncluded::Book.new.print }

      it 'uses the last included method' do
        expect(subject).to match /printable#print method/  
      end
    end
  end
end