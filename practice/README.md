# Ruby Drill: Enumerable Methods

## Summary
When we need to operate on an array in Ruby, we can accomplish just about anything with the `#each` method. However, using `#each` is not always the best choice.  There are many operations performed on arrays that are so common that Ruby provides a method specifically for handling it—finding a particular element, for example.  Using these built-in methods generally leads to more concise code and increases the readability of our code.

Some of these behaviors are written in the [`Array`][ruby array] class itself as instance variables.  Others are written in the [`Enumerable`][ruby enumerable] module.  `Enumerable` is full of useful, convenient methods that make working with enumerable objects much simpler (e.g., arrays and hashes).  If we find ourselves using `#each` to search, sort, or transform an array, chances are there's an enumerable method that will help us.

This challenge will expose us to a handful of the more commonly used enumerable methods. We'll be writing methods that within themselves use specific enumerable methods.  It's our job to figure out how to use the specified method.


## Releases
### Release 0: Utilize Enumerable Methods
In the `working_with_enumerables.rb` file there is a series of empty method definitions.  For each method, there is a comment describing the desired behavior of the method and a specific enumerable method to use.  We're going to write out these methods to match the descriptions of their behaviors.

Tests have also been provided, further illustrating the desired behavior of each method (see `spec/working_with_enumerables_spec.rb`).  When our methods are working properly, all the tests will pass.

*Constraint:*  Don't use `for ... in`, the `#each` method, or any other way of iterating over an array.  Use the recommended enumerable method.


## Conclusion
We'll be working with enumerable objects like arrays throughout Dev Bootcamp.  Investing the time to familiarize ourselves with the methods in the `Enumerable` module will certainly pay dividends down the road.  If we're comfortable using the `#each` method, it will be easy for us to reach for it anytime we're working with a collection.  Sometimes it is appropriate to use `#each`, but as we're learning to work with collections we should read through the enumerable methods to see if maybe Ruby provides a more appropriate method.  With practice, using enumerable methods will become second nature.


[ruby enumerable]: http://ruby-doc.org/core-2.1.0/Enumerable.html
[ruby array]: http://ruby-doc.org/core-2.1.0/Array.html


