def morse_to_eng_buffer(morse)
  hash = {
    "."     => "E",
    "-"     => "T",
    ".."    => "I",
    ".-"    => "A",
    "-."    => "N",
    "--"    => "M",
    "..."   => "S",
    "..-"   => "U",
    ".-."   => "R",
    ".--"   => "W",
    "-.."   => "D",
    "-.-"   => "K",
    "--."   => "G",
    "---"   => "O",
    "...."  => "H",
    "...-"  => "V",
    "..-."  => "F",
    ".--."  => "P",
    ".-.."  => "L",
    ".---"  => "J",
    "-..."  => "B",
    "-..-"  => "X",
    "-.-."  => "C",
    "-.--"  => "Y",
    "--.."  => "Z",
    "--.-"  => "Q",
    "   "   => " "
  }

  result = ""
  buffer = nil

  morse.each_char do |c|
    if !buffer
      buffer = c
    elsif (buffer[0] == " ") == (c == " ")
      buffer << c
    else
      begin
        result << hash[buffer] unless buffer == " "
      rescue
        raise buffer
      end

      buffer = c
    end
  end

  result << hash[buffer] unless buffer == " "

  result
end
