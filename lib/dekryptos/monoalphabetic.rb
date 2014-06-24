# encoding: UTF-8

# Author:: Eric Weinstein
# Copyright:: (c) 2014 Eric Weinstein
# License:: MIT (see LICENSE)

##
# Assorted tools for encrypting/decrypting monoalphabetic substitution ciphers
# (https://en.wikipedia.org/wiki/Substitution_cipher)
module Monoalphabetic
  # An error raised when a non-alphabetic character is passed to an encryption/
  # decryption method.
  class CharacterError < Exception; end

  # Public: encrypts and decrypts text via ROT13
  # (https://en.wikipedia.org/wiki/ROT13).
  #
  # * Each letter is shifted by 13 places in the alphabet, _e.g._ A -> N.
  # * Because encryption/decryption are symmetric, the same method is used to
  #   both encrypt and decrypt text.
  #
  # === Parameter(s)
  # +plaintext+ - +String+: the text to be encrypted or decrypted.
  #
  # === Return Value
  # +String+: the encrypted/decrypted text.
  #
  # === Example
  #
  # +rot_13('HELLO')+
  # +=> "URYYB"+
  #--
  # rubocop:disable Style/MethodLength
  #++
  def rot_13(plaintext)
    fail CharacterError,
         'Plaintext must be a string' unless plaintext.respond_to? :upcase
    letters = plaintext.upcase.split('')

    ciphertext = []

    letters.each do |letter|
      fail CharacterError,
           'Plaintext must be letters only' unless alphabet.include? letter

      idx_to_check = alphabet.index(letter)
      if idx_to_check < 13
        ciphertext << alphabet[idx_to_check + 13]
      else
        ciphertext << alphabet[idx_to_check - 13]
      end
    end

    ciphertext.join('')
  end
  #--
  # rubocop:enable Style/MethodLength
  #++

  private

  # Private: generates an alphabet.
  #
  # === Parameter(s)
  # None.
  #
  # === Return Value
  # +Array+: an array comprising the letters of the alphabet.
  def alphabet
    ('A'..'Z').to_a
  end
end
