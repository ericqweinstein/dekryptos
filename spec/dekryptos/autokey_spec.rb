# encoding: UTF-8

# Author:: Eric Weinstein
require 'spec_helper'

describe Autokey do
  include Autokey

  before do
    @plaintext  = 'ATTACKATDAWN'
    @tabula     = build_tabula_recta
    @keyword    = 'KRYPTOS'
    @ciphertext = 'KKRPVYSTWTWP'
  end

  describe '#encrypt' do
    it 'correctly encrypts plaintext given a keyword' do
      encrypt(@plaintext, @tabula, @keyword).should eq(@ciphertext)
    end
  end

  describe '#decrypt' do
    it 'correctly decrypts ciphertext given a keyword' do
      decrypt(@ciphertext, @tabula, @keyword).should eq(@plaintext)
    end
  end
end
