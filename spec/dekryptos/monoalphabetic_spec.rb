# encoding: UTF-8

# Author:: Eric Weinstein
require 'spec_helper'

describe Monoalphabetic do
  include Monoalphabetic

  before do
    @plaintext  = 'SOSAYWEALL'
    @ciphertext = 'FBFNLJRNYY'
  end

  describe '#rot_13' do
    it 'correctly encrypts plaintext' do
      rot_13(@plaintext).should eq(@ciphertext)
    end

    it 'correctly decrypts ciphertext' do
      rot_13(@ciphertext).should eq(@plaintext)
    end
  end
end
