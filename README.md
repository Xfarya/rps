# Rock Paper Scissors
<div align="center">|| 
<a href="#features">Features</a> ||
<a href="#planning">Planning</a> ||
<a href="#testing">Tests</a> ||
<a href="#run">Play</a> ||</div>
            <hr>

<img width="1357" alt="gameboard" src="https://user-images.githubusercontent.com/76533997/141277221-6350cc84-2489-4f5d-a88e-df82ee64732f.png">

## Challenge
Provide a Rock, Paper, Scissors game to play on the web

## Tools:
This website is built using
            <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/ruby/ruby-original.svg" alt="ruby" width="40" height="40"/>, 
             <img
src="https://raw.githubusercontent.com/devicons/devicon/master/icons/html5/html5-original.svg" alt="html5" width="40" height="40"/>
and <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/css3/css3-original.svg" alt="css3" width="40" height="40"/>.

Capybara, Sinatra and RSpec used for testing.

## Heroku
This website is deployed <a href="https://rps-by-farya.herokuapp.com/" target="_blank" >here</a>.

## FEATURES & FUNCTIONALITY 

## Features:

#### User stories:

##### Name registration

*As a marketeer  
So that I can see my name in lights  
I would like to register my name before playing an online game*  

<img width="1413" alt="Screenshot 2021-11-11 at 10 15 20" src="https://user-images.githubusercontent.com/76533997/141281054-742f4227-9486-43a7-96c7-a4db9da2f6fb.png">


<img width="333" alt="Screenshot 2021-11-11 at 10 15 50" src="https://user-images.githubusercontent.com/76533997/141280974-95ae7fcf-5517-422e-a5bf-ca88a9942ed2.png">

----------

##### Game

*As a marketeer  
So that I can enjoy myself away from the daily grind  
I would like to be able to play rock/paper/scissors*  

<img width="1295" alt="Screenshot 2021-11-11 at 10 16 31" src="https://user-images.githubusercontent.com/76533997/141281236-17403e3c-ec27-4c88-a5c3-fb031e0a6e56.png">


----------
#### Bonus Level 1: Mulitplayer

##### To do

Change the game so that two marketeers can play against each other.

----------

#### Bonus Level 2: Rock, Paper, Scissors, Spock, Lizard

##### Complete

<img width="797" alt="Screenshot 2021-11-10 at 23 45 44" src="https://user-images.githubusercontent.com/76533997/141281272-1e7a380e-35a5-43ce-943a-96d0bbbc9205.png">


Use the special rules ( you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock )

-----------

## Notes on functionality:

##### complete
The marketeer should be able to enter their name before the game.  
The marketeer will be presented the choices (rock, paper and scissors).  
The marketeer can choose one option.  
The game will choose a random option.  
A winner will be declared.  

----------
## PLANNING

## MVC Implementation

I implemented the MVC model, following this planning process in completing each user story

<img width="578" alt="Screenshot 2021-11-11 at 10 43 17" src="https://user-images.githubusercontent.com/76533997/141284667-14c82d14-b2b4-4aa9-aa50-e64669e8238c.png">

----------

## Routes

These are all the routes this app uses

<img width="578" alt="Screenshot 2021-11-11 at 11 08 51" src="https://user-images.githubusercontent.com/76533997/141288236-84c74a48-afbf-4baf-a3fa-190b3394200f.png">

---------
## TESTING

### How to run the tests

Run 
  <code>rspec</code>
within the rps directory.

### Tests

<img width="386" alt="Screenshot 2021-11-11 at 18 14 42" src="https://user-images.githubusercontent.com/76533997/141348537-d81ef8e0-2366-4e62-a908-31ba65b46252.png">

#### Feature tests

Scenario: Player wants to enter the game using a name of their choosing.  
Feature: Fill, submit and view own name.  

Scenario: Player wants to play game anonymous.  
Feature: Click button and begin play.  

Scenario: Player wants to choose a specific hand.  
Feature: Clicking on specific hand allows user to choose item.  

Scenario: Player wants to know opponent's choice.  
Feature: Opponent's choice appears at once after player has made their choice.  
 
#### RSpec Tests

Player class should receive Player name input and return Player object with name.

Game class takes input of player choice, decides random opponent selection and returns a winner based on game logic.

-----------

## INSTALL & RUN

### Install this app
Run <code>gem install bundler</code> if required, then:

<code>git clone https://github.com/Xfarya/rps.git</code>  
<code>cd rps</code>  
<code>bundle install</code>

-----------
### Run
Run <code>rackup</code> from directory

Open a browser to http://localhost:9292

-----------
