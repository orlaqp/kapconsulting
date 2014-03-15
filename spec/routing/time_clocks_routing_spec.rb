require "spec_helper"

describe TimeClocksController do
  describe "routing" do

    it "routes to #index" do
      get("/time_clocks").should route_to("time_clocks#index")
    end

    it "routes to #new" do
      get("/time_clocks/new").should route_to("time_clocks#new")
    end

    it "routes to #show" do
      get("/time_clocks/1").should route_to("time_clocks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/time_clocks/1/edit").should route_to("time_clocks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/time_clocks").should route_to("time_clocks#create")
    end

    it "routes to #update" do
      put("/time_clocks/1").should route_to("time_clocks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/time_clocks/1").should route_to("time_clocks#destroy", :id => "1")
    end

  end
end
