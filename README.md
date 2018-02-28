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

I also wanted to approach this as if it were a real-life problem, so I put some focus into making the code open enough to add new products easily in the future and also creating public methods that were readable and easy to understand on face value.

I initially went into this kata without reading that you're not meant to mess with item.rb. So I messed with item.rb. I had the intention of GildedRose being responsible for making new instances of Brie and Sulfuras and Backstage etc etc. That would have been lovely, but it wasn't meant to be. Note to self: always read the instructions.

After that revelation, I decided to initialize an instance of GildedRose with each of the item objects to be able to use their shared update method.
