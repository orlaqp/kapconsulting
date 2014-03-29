require "spec_helper"

describe TimeSheet1sController do
  describe "routing" do

    it "routes to #index" do
      get("/time_sheet1s").should route_to("time_sheet1s#index")
    end

    it "routes to #new" do
      get("/time_sheet1s/new").should route_to("time_sheet1s#new")
    end

    it "routes to #show" do
      get("/time_sheet1s/1").should route_to("time_sheet1s#show", :id => "1")
    end

    it "routes to #edit" do
      get("/time_sheet1s/1/edit").should route_to("time_sheet1s#edit", :id => "1")
    end

    it "routes to #create" do
      post("/time_sheet1s").should route_to("time_sheet1s#create")
    end

    it "routes to #update" do
      put("/time_sheet1s/1").should route_to("time_sheet1s#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/time_sheet1s/1").should route_to("time_sheet1s#destroy", :id => "1")
    end

  end
end
