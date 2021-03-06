# encoding: UTF-8

# Author:: Eric Weinstein
require 'spec_helper'

describe Transposition do
  include Transposition

  before do
    @ciphertext = 'ENDYAHROHNLSRHEOCPTEOIBIDYSHNAIACHTNREYULDSLLSLL'\
                  'NOHSNOSMRWXMNETPRNGATIHNRARPESLNNELEBLPIIACAEWMT'\
                  'WNDITEENRAHCTENEUDRETNHAEOETFOLSEDTIWENHAEIOYTEY'\
                  'QHEENCTAYCREIFTBRSPAMHHEWENATAMATEGYEERLBTEEFOAS'\
                  'FIOTUETUAEOTOARMAEERTNRTIBSEDDNIAAHTTMSTEWPIEROA'\
                  'GRIEWFEBAECTDDHILCEIHSITEGOEAOSDDRYDLORITRKLMLEH'\
                  'AGTDHARDPNEOHMGFMFEUHEECDMRIPFEIMEHNLSSTTRTVDOHW'
    @plaintext  = 'SLOWLYDESPARATLYSLOWLYTHEREMAINSOFPASSAGEDEBRIST'\
                  'HATENCUMBEREDTHELOWERPARTOFTHEDOORWAYWASREMOVEDW'\
                  'ITHTREMBLINGHANDSIMADEATINYBREACHINTHEUPPERLEFTH'\
                  'ANDCORNERANDTHENWIDENINGTHEHOLEALITTLEIINSERTEDT'\
                  'HECANDLEANDPEEREDINTHEHOTAIRESCAPINGFROMTHECHAMB'\
                  'ERCAUSEDTHEFLAMETOFLICKERBUTPRESENTLYDETAILSOFTH'\
                  'EROOMWITHINEMERGEDFROMTHEMISTXCANYOUSEEANYTHINGQ'
  end

  describe '#encrypt' do
    it 'correctly encrypts transposed plaintext' do
      encrypt(encrypt(@plaintext, 7), 84).should eq(@ciphertext)
    end
  end

  describe '#decrypt' do
    it 'correctly decrypts transposed ciphertext' do
      decrypt(decrypt(@ciphertext, 4), 48).should eq(@plaintext)
    end
  end
end
