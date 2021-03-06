require "spec_helper"

describe YoddlevidsController do
  describe "routing" do

    it "routes to #index" do
      get("/yoddlevids").should route_to("yoddlevids#index")
    end

    it "routes to #new" do
      get("/yoddlevids/new").should route_to("yoddlevids#new")
    end

    it "routes to #show" do
      get("/yoddlevids/1").should route_to("yoddlevids#show", :id => "1")
    end

    it "routes to #edit" do
      get("/yoddlevids/1/edit").should route_to("yoddlevids#edit", :id => "1")
    end

    it "routes to #create" do
      post("/yoddlevids").should route_to("yoddlevids#create")
    end

    it "routes to #update" do
      put("/yoddlevids/1").should route_to("yoddlevids#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/yoddlevids/1").should route_to("yoddlevids#destroy", :id => "1")
    end

  end
end
