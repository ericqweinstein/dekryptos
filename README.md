D E K Я Y P T O S
===================

[![Build Status](https://travis-ci.org/ericqweinstein/dekryptos.svg)](https://travis-ci.org/ericqweinstein/dekryptos)

## About
These are little bits o' Ruby magic I've been using to mess around with decrypting parts of the [Kryptos sculpture](http://en.wikipedia.org/wiki/Kryptos).

## Dependencies
* Ruby (2.0+).

## Installation
```bash
$ gem install dekryptos
```

## Examples
```bash
$ dekrypt -t EMUFPHZLRFAXYUSDJKZLDKRNSHGNFIVJYQTQUXQBQVYUVLLTREVJYQTMKYRDMFD -k KRYPTOS,PALIMPSEST -c vigenere

BETWEENSUBTLESHADINGANDTHEABSENCEOFLIGHTLIESTHENUANCEOFIQLUSION

$ dekrypt -t VFPJUDEEHZWETZYVGWHKKQETGFQJNCEGGWHKK?DQMCPFQZDQMMIAGPFXHQRLGTIMVMZJANQLVKQEDAGDVFRPJUNGEUNAQZGZLECGYUXUEENJTBJLBQCRTBJDFHRRYIZETKZEMVDUFKSJHKFWHKUWQLSZFTIHHDDDUVH?DWKBFUFPWNTDFIYCUQZEREEVLDKFEZMOQQJLTTUGSYQPFEUNLAVIDXFLGGTEZ?FKZBSFDQVGOGIPUFXHHDRKFFHQNTGPUAECNUVPDJMQCLQUMUNEDFQELZZVRRGKFFVOEEXBDMVPNFQXEZLGREDNQFMPNZGLFLPMRJQYALMGNUVPDXVKPDQUMEBEDMHDAFMJGZNUPLGESWJLLAETG -k KRYPTOS,ABSCISSA -c vigenere

ITWASTOTALLYINVISIBLEHOWSTHATPOSSIBLETHEYUSEDTHEEARTHSMAGNETICFIELDXTHEINFORMATIONWASGATHEREDANDTRANSMITTEDUNDERGRUUNDTOANUNKNOWNLOCATIONXDOESLANGLEYKNOWABOUTTHISTHEYSHOULDITSBURIEDOUTTHERESOMEWHEREXWHOKNOWSTHEEXACTLOCATIONONLYWWTHISWASHISLASTMESSAGEXTHIRTYEIGHTDEGREESFIFTYSEVENMINUTESSIXPOINTFIVESECONDSNORTHSEVENTYSEVENDEGREESEIGHTMINUTESFORTYFOURSECONDSWESTXLAYERTWO

$ dekrypt -t ENDYAHROHNLSRHEOCPTEOIBIDYSHNAIACHTNREYULDSLLSLLNOHSNOSMRWXMNETPRNGATIHNRARPESLNNELEBLPIIACAEWMTWNDITEENRAHCTENEUDRETNHAEOETFOLSEDTIWENHAEIOYTEYQHEENCTAYCREIFTBRSPAMHHEWENATAMATEGYEERLBTEEFOASFIOTUETUAEOTOARMAEERTNRTIBSEDDNIAAHTTMSTEWPIEROAGRIEWFEBAECTDDHILCEIHSITEGOEAOSDDRYDLORITRKLMLEHAGTDHARDPNEOHMGFMFEUHEECDMRIPFEIMEHNLSSTTRTVDOHW -k 4 -c transposition

YOSOEIHANULLSMMPANPNEIATINCEEATSIHOYEAEBAEAAYLESTUTMRTEITTIAEBTIITEDDILHDDOFUCIINTVWDRLETBSITYSLHSXTGHRLLPCMDEHNRHELTNIEETRTPHNMGREAOTORERSNHSPOIECHEIOSYRKETREGEEREHSTHNHNHPIYAHEDSOOWENIASELAWNEAEDNOODEETHCCFSHEAEETOIEEAENBDAMWRRFEDCSGORORLGANMFEMFESROEAHRCODNCRLLNNRNRTRENBIEWTRTUTEFEWAYQNYIRMWTTEBFFUAOATIDATEEGWADLHEADLTMAHPHMHDPMLTD

$ dekrypt -t YOSOEIHANULLSMMPANPNEIATINCEEATSIHOYEAEBAEAAYLESTUTMRTEITTIAEBTIITEDDILHDDOFUCIINTVWDRLETBSITYSLHSXTGHRLLPCMDEHNRHELTNIEETRTPHNMGREAOTORERSNHSPOIECHEIOSYRKETREGEEREHSTHNHNHPIYAHEDSOOWENIASELAWNEAEDNOODEETHCCFSHEAEETOIEEAENBDAMWRRFEDCSGORORLGANMFEMFESROEAHRCODNCRLLNNRNRTRENBIEWTRTUTEFEWAYQNYIRMWTTEBFFUAOATIDATEEGWADLHEADLTMAHPHMHDPMLTD -k 48 -c transposition

SLOWLYDESPARATLYSLOWLYTHEREMAINSOFPASSAGEDEBRISTHATENCUMBEREDTHELOWERPARTOFTHEDOORWAYWASREMOVEDWITHTREMBLINGHANDSIMADEATINYBREACHINTHEUPPERLEFTHANDCORNERANDTHENWIDENINGTHEHOLEALITTLEIINSERTEDTHECANDLEANDPEEREDINTHEHOTAIRESCAPINGFROMTHECHAMBERCAUSEDTHEFLAMETOFLICKERBUTPRESENTLYDETAILSOFTHEROOMWITHINEMERGEDFROMTHEMISTXCANYOUSEEANYTHINGQ
```

## Ciphers
There are currently files for Autokey, Monoalphabetic (simple ROT-13), Playfair, Transposition, and Vigenere ciphers.

## Contributing
1. Branch (`git checkout -b fancy-new-feature`)
2. Commit (`git commit -m "Fanciness!"`)
3. Lint (`bundle exec rake rubocop`)
4. Test (`bundle exec rake spec`)
5. Generate documentation (`bundle exec rake rdoc`)
6. Push (`git push origin fancy-new-feature`)
7. Ye Olde Pulle Request
