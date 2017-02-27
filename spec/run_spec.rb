require 'run'

describe Run do
  describe "attributes" do
    subject do
      # ts = DateTime.new("2014-12-22 20:30")
      Run.new(duration: 32,
              distance: 5.2,
              timestamp: "2014-12-22 20:30")
    end
    
    it { is_expected.to respond_to(:duration) }
    it { is_expected.to respond_to(:distance) }
    it { is_expected.to respond_to(:timestamp) }
    
    # describe "#timestamp" do
    #   it "returns a DateTime" do
    #     expect(subject.timestamp).to be_a(DateTime)
    #   end
    # end
  end
  
  describe "double & stub" do
    before do
      @feed = double("feed")
      allow(@feed).to receive(:fetch).and_return("test")
    end
    
    it "return a string" do
      expect(@feed.fetch).to eq("test")
    end
  end
end