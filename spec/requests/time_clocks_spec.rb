require 'spec_helper'

describe "TimeClocks" do
  describe "GET /time_clocks" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get time_clocks_path
      response.status.should be(200)
    end
  end
end
