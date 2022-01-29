require 'airport'

describe Airport do

  let(:plane) { double :plane }

  it 'instructs a plane to land' do
    allow(plane).to receive(:status=).with("landed")
    subject.land(plane)
    expect(subject.hangar[0]).to eq plane
  end

end
