class String
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

  def remove_accents    
    str = String.new(self)
    String::ACCENTS_MAPPING.each {|letter,accents|
      packed = accents.pack('U*')
      rxp = Regexp.new("[#{packed}]", nil)
      str.gsub!(rxp, letter)
    }

    str
  end

  def remove_ponctuation
    warn "[DEPRECATION] Method renamed to remove_punctuation"
    remove_punctuation
  end

  def remove_punctuation
    str = String.new(self)
    str.gsub!(/[^\w\s]/,"")
    str
  end

  def only_text
    str = String.new(self)
    str.remove_accents.remove_punctuation
  end
end

