class RomanToInteger
  LOOKUP = {
    "I" => 1,
    "V" => 5,
    "X" => 10,
    "L" => 50,
    "C" => 100,
    "D" => 500,
    "M" => 1000
  }

  def self.parse(roman)
    convert(roman, 0, 0, nil)
  end

  def self.convert(roman, acc, hold, last)
    return acc + hold if roman.length == 0

    recent_token = roman[roman.length - 1]
    recent_value = LOOKUP[recent_token]
    last_value = LOOKUP[last]

    if !last_value || (recent_token == last) || (recent_value > last_value)
      hold = hold + recent_value
    elsif recent_value < last_value
      acc = acc + hold
      acc = acc - recent_value
      hold = 0

    end
    convert(roman[0...(roman.length - 1)], acc, hold, recent_token)
  end
end
