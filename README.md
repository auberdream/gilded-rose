# Gilded Rose

## What is this?
This is a solution to the famous Gilded Rose kata in Ruby.

## How to use

* Clone this repo
* Load it into the irb
* Make some new items (it looks like those in the texttest_fixture.rb)
* Make a new instance of GildedRose with your lovely items
* Update the heck out of it


## Approach

My main purpose with this refactor was to ensure that making the Conjured class was as easy as possible. I cite the quote from Kent Beck: 'for each desired change, make the change easy (warning: this may be hard), then make the easy change'. In the end, adding the conjured class took me < 10 minutes.

I also wanted to approach this as if it were a real-world problem, so I put some focus into making the code open enough to add new products easily in the future.

I initially went into this kata without reading that you're not meant to mess with item.rb. So I messed with item.rb. I had the intention of GildedRose being responsible for making new instances of Brie and Sulfuras and Backstage etc etc. That would have been lovely, but it wasn't meant to be. Note to self: always read the instructions.



## Get going quickly using Cyber-Dojo

I've also set this kata up on [cyber-dojo](http://cyber-dojo.org) for several languages, so you can get going really quickly:

- [JUnit, Java](http://cyber-dojo.org/forker/fork/751DD02C4C?avatar=snake&tag=8)
- [C#](http://cyber-dojo.org/forker/fork/5C5AC766B0?avatar=koala&tag=3)
- [C++](http://cyber-dojo.org/forker/fork/AA86ECBCC9?avatar=rhino&tag=7)
- [Ruby](http://cyber-dojo.org/forker/fork/A8943EAF92?avatar=hippo&tag=9)
- [RSpec, Ruby](http://cyber-dojo.org/forker/fork/8E58B0AD16?avatar=raccoon&tag=3)
- [Python](http://cyber-dojo.org/forker/fork/297041AA7A?avatar=lion&tag=4)
- [Cucumber, Java](http://cyber-dojo.org/forker/fork/0F82D4BA89?avatar=gorilla&tag=48) - for this one I've also written some step definitions for you

## Better Code Hub

I analysed this repo according to the clean code standards on [Better Code Hub](https://bettercodehub.com) just to get an independent opinion of how bad the code is. Perhaps unsurprisingly, the compliance score is low!

[![BCH compliance](https://bettercodehub.com/edge/badge/emilybache/GildedRose-Refactoring-Kata?branch=master)](https://bettercodehub.com/)
