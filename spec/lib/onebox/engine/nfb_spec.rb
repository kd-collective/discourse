require "spec_helper"

describe Onebox::Engine::NFBOnebox do
  let(:link) { "http://nfb.ca" }
  let(:html) { described_class.new(link).to_html }

  before do
    fake(link, response("nfb.response"))
  end

  # it "returns video title" do
  #   expect(html).to include("Mitt Romney Style (Gangnam Style Parody)")
  # end

  # it "returns video image" do
  #   expect(html).to include("a9febe641d5beb264bbab0de49272e5a-mitt-romney-style-gangnam-style-parody.jpg")
  # end

  # it "returns video description" do
  #   expect(html).to include("Heyyy wealthy ladies!&quot;Mitt Romney Style&quot; is now available on iTunes")
  # end

  # it "returns video URL" do
  #   expect(html).to include("moogaloop.1.0.31.swf?clip_id=6830834&amp;use_node_id=true&amp;og=1&amp;auto=true")
  # end

  it "returns URL" do
    expect(html).to include(link)
  end
end
