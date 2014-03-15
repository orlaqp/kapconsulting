require "spec_helper"

describe InternsController do
  describe "routing" do

    it "routes to #index" do
      get("/interns").should route_to("interns#index")
    end

    it "routes to #new" do
      get("/interns/new").should route_to("interns#new")
    end

    it "routes to #show" do
      get("/interns/1").should route_to("interns#show", :id => "1")
    end

    it "routes to #edit" do
      get("/interns/1/edit").should route_to("interns#edit", :id => "1")
    end

    it "routes to #create" do
      post("/interns").should route_to("interns#create")
    end

    it "routes to #update" do
      put("/interns/1").should route_to("interns#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/interns/1").should route_to("interns#destroy", :id => "1")
    end

  end
end
