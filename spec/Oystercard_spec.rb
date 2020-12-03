require 'oystercard'

describe Oystercard do
  let(:station) { double('station double') }
  let(:station1) { double('station double') }

  it 'can create an instance of oystercard' do
    expect(subject).to be_kind_of(Oystercard)
  end

  it 'responds to the method balance' do
    expect(subject).to respond_to(:balance)
  end

  it 'gives a default balance of 0' do
    expect(subject.balance).to eq 0
  end

  it 'responds to the method top_up' do
    expect(subject).to respond_to(:top_up).with(1).argument
  end

  it 'starts with no stored journeys' do
    expect(subject.journeys).to eq []
  end

  it 'responds to the method touch_in' do
    expect(subject).to respond_to(:touch_in).with(1).argument
  end

  it 'responds to the method touch_out' do
    expect(subject).to respond_to(:touch_out).with(1).argument
  end

  describe '#top_up' do
    it 'increases balance by amount' do
      subject.top_up(10)
      expect(subject.balance).to eq 10
    end
    it "raises an error when top up exceeds #{Oystercard::LIMIT}" do
      message = "Balance cannot exceed #{Oystercard::LIMIT}"
      expect { subject.top_up(Oystercard::LIMIT+1) }.to raise_error message
    end
  end

  describe '#touch_in' do
    it 'raises an error when balance is below 1' do
      message = "Not enough funds"
      expect { subject.touch_in(station) }.to raise_error message
    end
  end

    describe '#touch_out' do
       it 'it deducts FARELIMIT from balance' do
      subject.top_up(Oystercard::FARELIMIT)
      subject.touch_in(station)
      expect { subject.touch_out(station) }.to change{ subject.balance }.by(-Oystercard::FARELIMIT)
    end

    it 'records journey from start to end station' do
      subject.top_up(Oystercard::FARELIMIT)
      subject.touch_in(station)
      subject.touch_out(station1)
      expect(subject.journeys).to include({station => station1})
    end
  end
end
