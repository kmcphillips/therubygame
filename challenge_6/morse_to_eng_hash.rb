def morse_to_eng_hash(morse)
  hash = {
    ".-"    => "A",
    "-..."  => "B",
    "-.-."  => "C",
    "-.."   => "D",
    "."     => "E",
    "..-."  => "F",
    "--."   => "G",
    "...."  => "H",
    ".."    => "I",
    ".---"  => "J",
    "-.-"   => "K",
    ".-.."  => "L",
    "--"    => "M",
    "-."    => "N",
    "---"   => "O",
    ".--."  => "P",
    "--.-"  => "Q",
    ".-."   => "R",
    "..."   => "S",
    "-"     => "T",
    "..-"   => "U",
    "...-"  => "V",
    ".--"   => "W",
    "-..-"  => "X",
    "-.--"  => "Y",
    "--.."  => "Z"
  }

  morse.split("   ").map do |word|
    word.split(" ").map do |letter|
      hash[letter]
    end.join
  end.join(" ")
end
