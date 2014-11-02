# encoding: UTF-8

# Author:: Eric Weinstein
# Copyright:: (c) 2014 Eric Weinstein
# License:: MIT (see LICENSE)

##
# Tools for analyzing suggested Kryptos solutions.
module Analysis
  # Public: Provides all factors of a given number.
  #
  # === Parameter(s)
  # +n+ - +Integer+: The number to factor.
  #
  # === Return Value
  # +Array<Integer>+: A list of factors.
  def factor(n)
    factors = []
    (1..n).each do |x|
      factors << x if n % x == 0
    end

    factors
  end

  # Public: Provides all anagrams for a given word.
  #
  # === Parameter(s)
  # +text+ - +String+: The text to anagram.
  #
  # === Return Value
  # +Array<String>+: A list of anagrams.
  # rubocop: disable MethodLength, UnderscorePrefixedVariableName
  def anagram(text)
    head, tail = [], text.split('')
    stack = [[head, tail]]
    result = []

    while stack.size > 0
      head, tail = stack.pop
      if tail.size.zero?
        result << head
      else
        tail.each_with_index do |_, i|
          _tail = tail.dup
          curr  = _tail.delete_at(i)
          _head = head.dup
          _head << curr
          stack << [_head, _tail]
        end
      end
    end

    result.tap { |r| r.map! { |p| p.join('') }.uniq! }
  end
  # rubocop: enable MethodLength, UnderscorePrefixedVariableName

  # Public: Checks whether one word or phrase is
  # an anagram of another.
  #
  # === Parameter(s)
  # +phrase_one+ - +String+: A word or phrase.
  # +phrase_two+ - +String+: A word or phrase that
  # may be an anagram of +phrase_one+.
  #
  # === Return Value
  # +Boolean+: True if one phrase is an anagram
  # of the other, false otherwise.
  def anagram?(phrase_one, phrase_two)
    phrase_one.split('').sort == phrase_two.split('').sort
  end

  # Public: Performs frequency analysis on the provided
  # text.
  #
  # === Parameter(s)
  # +text+ - +String+: The text to analyze.
  #
  # === Return Value
  # +Hash<String, Integer>+: A hash representing the
  # letter frequencies.
  def frequency(text)
    text  = text.downcase.gsub(/\s*/, '')
    chars = text.split('')
    freqs = Hash[('a'..'z').to_a.zip([0] * 26)]

    chars.each { |c| freqs[c] += 1 }

    freqs
  end

  # Public: Calculates the index of coincidence for
  # the given text (see http://en.wikipedia.org/wiki/
  # Index_of_coincidence).
  #
  # === Parameter(s)
  # +text+ - +String+: The text to analyze.
  #
  # === Return Value
  # +Float+: The index of coincidence for the text.
  def ioc(text)
    c     = 26.0
    freqs = frequency(text)
    n     = text.length

    f = freqs.values.reduce(0) { |a, e| a + (e * (e - 1)) }
    f / ((n * (n - 1)) / c)
  end

  # Public: Calculates the percentage of text composed
  # of vowels. (Y is not included as a vowel.)
  #
  # === Parameter(s)
  # +text+ - +String+: The text to analyze.
  #
  # === Return Value
  # +Float+: The percentage comprising vowels.
  def vowels(text)
    vowels = %w(A E I O U)
    chars = text.upcase.split('')
    vowel_count = 0

    chars.each { |c| vowel_count += 1 if vowels.include? c }

    vowel_count.to_f / text.length
  end
end
