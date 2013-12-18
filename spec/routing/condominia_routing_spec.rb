require "spec_helper"

describe CondominiaController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/condominia").to route_to("condominia#index")
    end

    it "routes to #new" do
      expect(:get => "/condominia/new").to route_to("condominia#new")
    end

    it "routes to #show" do
      expect(:get => "/condominia/1").to route_to("condominia#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/condominia/1/edit").to route_to("condominia#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/condominia").to route_to("condominia#create")
    end

    it "routes to #update" do
      expect(:put => "/condominia/1").to route_to("condominia#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/condominia/1").to route_to("condominia#destroy", :id => "1")
    end

  end
end
