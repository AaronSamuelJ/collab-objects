describe Story do
  it 'has a name' do
    # Setup
    story = Story.new
    story.name = "Old Man and the Sea"

    # Expectation
    expect(story.name).to eq("Old Man and the Sea")
  end
end
