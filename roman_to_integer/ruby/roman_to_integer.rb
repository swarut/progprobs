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
    puts "ROMAN = #{roman}"
    puts "ACC = #{acc}"
    puts "HOLD = #{hold}"
    puts "LAST = #{last}"
    puts "-----"
    return acc + hold if roman.length == 0

    recent_token = roman[0]
    recent_value = LOOKUP[recent_token]
    last_value = LOOKUP[last]

    if (recent_token == last) || !last_value
      # Same token, just keep the value and read next
      hold = hold + recent_value
    elsif  last_value < recent_value
      # The current token is greater, apply all value held so far
      acc = acc - hold
      acc = acc + recent_value
      hold = 0
    elsif last_value > recent_value
      hold = hold + recent_value
      # acc = acc + hold
      # hold = 0
    end
    puts "RECENT TOKEN = #{recent_token}"
    puts "RECENT VALUE = #{recent_value}"
    puts "LAST VALUE = #{last_value}"
    puts "UPDATED HOLD = #{hold}"
    puts "UPDATED ACC = #{acc}"
    puts "======================="
    convert(roman[1..roman.length], acc, hold, recent_token)
  end
end
