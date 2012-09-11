# coding: utf-8

require 'spec_helper'

describe String do
  it "should remove string accents" do
    "São Paulo".remove_accents.should == "Sao Paulo"
  end

  it "should remove letter 'e' with tilde" do
    "Tẽst".remove_accents.should == "Test"
  end

  describe "remove_ponctuation" do
    it "should remove especial caracters" do
      "Testing: all! ponctuation?.,'¿! should be removed".remove_ponctuation.should == "Testing all ponctuation should be removed"
    end
  end

  describe "only_text" do
    it "should remove accents and ponctuation" do
      "Testing: lâmpadas mágicas não existem!".only_text.should == "Testing lampadas magicas nao existem"
    end
  end

end
