# coding: utf-8

require 'spec_helper'

describe String do
  it "should remove string accents" do
    "São Paulo".remove_accents.should == "Sao Paulo"
  end

  it "should remove letter 'e' with tilde" do
    "Tẽst".remove_accents.should == "Test"
  end
end
