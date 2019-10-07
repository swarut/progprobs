# Find and locate all permutation of short string inside long string.
class StringPermutationInBiggerString
  def string_permutation_in_bigger_string(short_string, long_string)
    reps = short_string.split('')
    result = long_string.split('').inject({index: 0, current_window: [], lack: reps.dup, accepted: []}) do |acc, char|
      # puts "ITERATION #{acc[:index]}, read [#{char}]"
      acc[:current_window] << char
      if acc[:current_window].length <= reps.length
        acc[:lack].delete(char)
        # puts "1:: Current window :: #{acc[:current_window]}"
        # puts "1:: Lack :: #{acc[:lack]}"
      else
        previous_char = acc[:current_window].shift
        # puts "2:: Previous char :: #{previous_char}"
        # puts "2:: Current window :: #{acc[:current_window]}"
        # puts "2:: Lack before :: #{acc[:lack]}, length = #{acc[:lack].length}"
        acc[:lack] << previous_char if reps.include?(previous_char) && !acc[:current_window].include?(previous_char)
        acc[:lack].delete(char)
        # puts "2:: Lack after :: #{acc[:lack]}, length = #{acc[:lack].length}"
      end

      if acc[:lack].length == 0
        # puts "++ Found so substring #{acc[:current_window]} at index #{acc[:index]}"
        acc[:accepted].push([acc[:index] - reps.length + 1, acc[:current_window].dup.join()])
      end

      puts "\n"

      acc[:index] += 1
      acc
    end
    result[:accepted]
  end

  def rep(string)
    string.split('').inject({}) do |acc, char|
      if !acc[char]
        acc[char] = 1
      else
        acc[char] = acc[char]
      end
      acc
    end
  end

  def accept_state?(base_state, compare_state)
    accepted = true
    base_state.keys.each do |key|
      accepted = false if (compare_state[key] != base_state[key])
    end
    accepted
  end
end
