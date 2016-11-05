require "rails_helper"

RSpec.describe "Routing to movies", :type => :routing do
  it "routes GET /movies to movies#index" do
    expect(:get => "/movies").to route_to("movies#index")
  end
end
