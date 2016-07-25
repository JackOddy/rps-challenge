require 'player'

describe Player do
  let(:weapons) {double(:weapons, new: weapons_chooser)}
  let(:weapons_chooser) {double(:weapons_chooser)}
  let(:subject) {described_class.new('Jack', weapons: weapons)}
  let(:weps_choices) {double(:choices_const)}
  describe '#name' do
    it 'knows it\'s name' do
      expect(subject.name).to eq 'Jack'
    end
  end
  describe'#choose' do
    it 'sends message to weapons' do
      expect(weapons_chooser).to receive(:choose).with('rock')
      p subject
      subject.choose('rock')
    end
  end
end
