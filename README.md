data_structures_funtime
=======================

A repository to refresh and enhance my data structure knowledge

##Bundler:
    gem 'data_structures_funtime', :git => 'https://github.com/sannessa/data_structures_funtime'

#API:
http://sannessa.github.io/data_structures_funtime/frames.html#!file.README.html

##Example:

1. Create a Hash table to store scores where the key is the position and the value is a player's name

        require 'data_structures_funtime'

        scores = DataStructuresFuntime::AHashTable.new(10)
        scores.insert(1, "Steve")
        scores.insert(3, "Bear")
        scores.insert(11, "Jeff")

2. To lookup which player had a specific score:

        scores.find(11)
        => "Jeff"
