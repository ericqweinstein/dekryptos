D E K Я Y P T O S
===================

## About
These are little bits o' Ruby magic I've been using to mess around with decrypting parts of the [Kryptos sculpture](http://en.wikipedia.org/wiki/Kryptos).

## Dependencies
* Ruby (ideally 2.0+)

## Installation
Eventually, this'll be available on [RubyGems](http://rubygems.org/) with some fancy command line bells & whistles. Right now it's probably easiest to include the files as you need them:

```bash
$ git clone https://github.com/ericqweinstein/dekryptos
$ cd dekryptos
$ irb
>> load 'lib/dekryptos/vigenere.rb'
=> true
>> include Vigenere
=> Object
>> t = build_table('KRYPTOS', 'PALIMPSEST')
>> # Lots of output
>> encrypt('ATTACKATDAWN', t, 'ABSCISSA')
=> "DEUVRPGIGHHB"
>> decrypt(_, t, 'ABSCISSA')
=> "ATTACKATDAWN"
```

## Contributing
1. Branch (`git checkout -b fancy-new-feature`)
2. Commit (`git commit -m "Fanciness!"`)
3. Lint (`bundle exec rake rubocop`)
4. Test (`bundle exec rake spec`)
5. Generate documentation (`bundle exec rake rdoc`)
6. Push (`git push origin fancy-new-feature`)
7. Ye Olde Pulle Request
