$count = 0

describe "let!" do
  invocation_order = []
  
  let!(:count) do
    invocation_order << :let!
    $count += 1
  end
  
  it "calls the helper in a before hook" do
    invocation_order << :example
    expect(invocation_order).to eq([:let!, :example])
    expect($count).to eq(1)
  end
end