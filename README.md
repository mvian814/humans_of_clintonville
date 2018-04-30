# README

This was one of the first web apps that I made outside of my bootcamp class. Building off of my original Dogs of Clintonville App, my goals for Humans of Clintonville was to get some experience with associations and to work on my html and css.  The app features a list of Humans with a list of their dogs and cats.  Most of the data is generated using Faker gems.

One of the first issues I encountered with this app was generating migrations.  Rails took my Human model and pluralized it as Humen.  After some research I found that I needed to define an irregular inflection in my initializer file.  

I also ran into some trouble with github. I had forgotten to push it to the origin master so I continually got a lot of feed back on my terminal.

Since my goal for this app was to get experience with associations, I wasn't concerned with giving each individual human it's own image but since I wanted something pleasing to look at for the view I chose an avatar image that would be the same for each human.

Creating the humans model, controller, view, and routes was not a stretch from Dogs of Clintonville.  The growth for this app was in the associations.  Once I started creating the dog table I ran into some difficulty with the associations.  I thought that the only thing that was needed with a "has many/belongs to". I realized that each dog needed a human id so I had to run a migration to add that to the dog table.  

The next issue I ran into was with the html. Previous to Humans of Clintonville, the only experience I had with html and css was with two projects from my class.  The most advanced thing I had done with these projects was to create basic divs to change the back ground color and to create a navbar.  For Humans of Clintonville, I needed to find a way to display the humans' information with the dogs' information and eventually the cats' information.  To accommodate these requirements, I had found some html with a row containing three divs.

Upon viewing the webpage with humans and their associated dogs, hilarity ensued. Due to a missing </div> and a misplaced Humans; @humans.do block the dogs and their information visibly increased in size as I scrolled down the webpage until the entire page was unreadable, oversized, black text. I realized the proper placement of the @humans block was above the row div.

After creating the table for the cats, the next step was to create a form for adding humans and adding dogs and cats.  I used an existing api for dog breeds but created an array for cat breeds.  

The last step in Humans of Clintonville was learning to create buttons for adding a human, dog, or cat that would link a user to the form.  This step was the catalyst for one of my next non-rails project called "Oh My Button" where I experiment with creating buttons using html and css.
