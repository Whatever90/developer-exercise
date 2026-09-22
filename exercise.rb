class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    str.split.map do |word|
      #puts word
      if word.length < 4
        word
      else
        letters_only = word.gsub(/[^A-Za-z]/, "")
        punctuation = word.gsub(/[A-Za-z]/, "")

        if letters_only.length > 4
          replacement = word[0].upcase == word[0] ? "Marklar" : "marklar"
          replacement + punctuation
        else
          word
        end
      end
    end.join(" ")
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    return 0 if nth <= 0

    a, b = 1, 1
    sum = 0

    nth.times do
      sum += a if a.even?
      a, b = b, a + b
    end

    sum
  end

end
