require 'spec_helper'

describe String do
  specify { expect(Word.new("São Paulo").accentless).to eq "Sao Paulo" }
  specify { expect(Word.new("Tẽst").accentless).to eq "Test" }

  context "hungarian accents" do
    specify { expect(Word.new("fejlődő").accentless).to eq "fejlodo" }
    specify { expect(Word.new("FEJLŐDŐ").accentless).to eq "FEJLODO" }
    specify { expect(Word.new("fű").accentless).to eq "fu" }
    specify { expect(Word.new("FŰ").accentless).to eq "FU" }
  end
end
