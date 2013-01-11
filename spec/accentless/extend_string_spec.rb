# coding: utf-8

require 'spec_helper'

describe String do
  it "should remove string accents" do
    "São Paulo".remove_accents.should == "Sao Paulo"
  end

  it "should remove the most annoying Hungarian accents" do
    "fejlődő".remove_accents.should == "fejlodo"
    "FEJLŐDŐ".remove_accents.should == "FEJLODO"

    "fű".remove_accents.should == "fu"
    "FŰ".remove_accents.should == "FU"
  end

  it "should remove letter 'e' with tilde" do
    "Tẽst".remove_accents.should == "Test"
  end

  describe "remove_punctuation" do
    it "should remove especial caracters" do
      "Testing: all! punctuation?.,'¿! should be removed".remove_punctuation.should == "Testing all punctuation should be removed"
    end
  end

  describe "only_text" do
    it "should remove accents and punctuation" do
      "Testing: lâmpadas mágicas não existem!".only_text.should == "Testing lampadas magicas nao existem"
    end
  end

end
