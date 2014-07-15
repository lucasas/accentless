module Accentless
  ACCENTS_MAPPING = {
    'E' => [200,201,202,203],
    'e' => [232,233,234,235,7869],
    'A' => [192,193,194,195,196,197],
    'a' => [224,225,226,227,228,229,230],
    'C' => [199],
    'c' => [231],
    'O' => [210,211,212,213,214,216,336],
    'o' => [242,243,244,245,246,248,337],
    'I' => [204,205,206,207],
    'i' => [236,237,238,239],
    'U' => [217,218,219,220,368],
    'u' => [249,250,251,252,369],
    'N' => [209],
    'n' => [241],
    'Y' => [221],
    'y' => [253,255],
    'AE' => [306],
    'ae' => [346],
    'OE' => [188],
    'oe' => [189]
  }

  refine String do
    def accentless(string = String.new(self))
      string.tap do |s|
        ACCENTS_MAPPING.each { |letter, accents| replace(s, letter, accents) }
      end
    end

    def accentless!
      accentless(self)
    end

    private

    def replace(string, letter, accents)
      packed = accents.pack('U*')
      regex = Regexp.new("[#{packed}]", nil)
      string.gsub!(regex, letter)
    end
  end
end

