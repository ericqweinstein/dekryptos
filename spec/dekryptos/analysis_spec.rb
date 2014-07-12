# encoding: UTF-8

# Author:: Eric Weinstein
require 'spec_helper'

describe Analysis do
  include Analysis

  before do
    @text = 'ATTACKATDAWN'
  end

  describe '#factor' do
    it 'correctly factors an integer' do
      factor(12).should eq([1, 2, 3, 4, 6, 12])
    end
  end

  describe '#anagram' do
    it 'finds all anagrams for a word or phrase' do
      anagram('foo').should eq %w(oof ofo foo)
    end
  end

  describe '#anagram?' do
    it 'is true when one phrase is an anagram of the other' do
      anagram?('arf', 'far').should be_true
    end

    it 'is false when one phrase is not an anagram of the other' do
      anagram?('foo', 'bar').should be_false
    end
  end

  describe '#frequency' do
    it 'performs frequency analysis on the provided text' do
      test_frequency = Hash[('a'..'z').to_a.zip([1] * 26)]
      frequency('abcdefghijklmnopqrstuvwxyz').should eq(test_frequency)
    end
  end

  describe '#ioc' do
    it 'calculates the index of coincidence for a block of text' do
      ioc(Kryptos::K3).round(2).should eq(1.72)
    end
  end

  describe '#vowels' do
    it 'calculates the percentage of vowels in a block of text' do
      vowels(Kryptos::K3).round(2).should eq(0.36)
    end
  end
end
