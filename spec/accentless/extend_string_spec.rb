require 'spec_helper'

describe String do
  it "should remove string accents" do
    "São Paulo".remove_accents.should == "Sao Paulo"
  end
end
