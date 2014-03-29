require 'spec_helper'

describe "TimeSheet1s" do
  describe "GET /time_sheet1s" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get time_sheet1s_path
      response.status.should be(200)
    end
  end
end
