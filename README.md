# Validating Input Tic Tac Toe

## Objectives

1. Use either `if` statements or boolean expressions to control the return value of a method.
2. Use a "helper method" - a method called within another method - to make your code more readable.


## Overview

In our previous Tic Tac Toe lab, we built a method, `#position_taken?`, that checks to see if the user's submitted position is free or already filled with a token. This is a type of **validation**. Our `#position_taken?` method protects our game from breaking when the use (accidentally or otherwise) submits a position that isn't available.

Our validation is still incomplete however. What if a user submits a position that isn't even on the board? A more complete validation might look something like this:

1. You must move to a position within the tic tac toe board.
2. The position must be vacant and not currently taken by a player.

In this lab, you'll build a method `valid_move?` that accepts a board and a position to check and returns `true` if the move is valid and `false` or `nil` if not. A valid move means that the submitted position is:

1. Present on the game board.
2. Not already filled with a token.

## Helper Methods

We already have a method, `#position_taken?` that handles the second part of our validation procedure. Consequently, we can call that method *inside* of our `#valid_move?` method.

The `#position_taken?` method can thus be referred to as a **helper method**––a method that handle a discrete unit of behavior and is used inside of other methods to carry out a larger task.

The `#position_taken?` method can be used directly in a conditional expression, for example:

```ruby
def some_new_fabulous_method
	if position_taken?
		do some stuff
	else
		do some other stuff
	end
end
```

## Instructions

This lab is test-driven, so run the test suite and use the output to help you solve this one. Here are a few things to keep in mind:

* Arrays are indexed starting at 0. A user playing your game is unlikely to know that. When a user types in that they'd like to fill position 1, they *really* mean that they'd like to fill the board array at the index of `0`. You'll have to account for this in your method.

* The valid positions on the board, from the user's point of view, are 1-9. If the user inputs a number not included in that range, their input is invalid. There are a few different ways to check to see if a number is included in a range. Look up the [`#between?`](http://ruby-doc.org/core-2.2.3/Comparable.html#method-i-between-3F) method for starters.

* Remember that the `#gets` method captures the user's input to the terminal and returns it to our Ruby program as a string. We can't ask Ruby to tell us whether a string that contains the number 5, `"5"`, is between the numbers 1 and 9. You'll have to convert the position string into a number first. Check out the [`#to_i`](http://ruby-doc.org/core-2.0.0/String.html#method-i-to_i) method.

* There are two conditions that need to be met in order for this method to return `true`––that the position is on the board and that the position is not taken. Think about how to construct a method that must check two conditions. Can you use two `if` statements? What about a boolean operator like `&&`?

* Think back to our lessons on the concept of truthiness. Both `false` and `nil` are considered to be "falsey". So, either a `false` or `nil` return value for an invalid move will suffice.
