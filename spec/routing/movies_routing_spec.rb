require "rails_helper"

RSpec.describe "Routing to movies", :type => :routing do
  it "routes GET /movies to movies#index" do
    expect(:get => "/movies").to route_to("movies#index")
  end

  it "routes Get /movies/2 to movies#show" do
    expect(:get => "/movies/2").to route_to("movies#show", :id => "2")
  end
end
