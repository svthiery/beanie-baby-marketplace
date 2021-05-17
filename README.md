# Beanie Baby Marketplace

The Beanie Baby Marketplace is a Ruby on Rails web application that allows users to display their beanie baby collections and trade beanies with other users.

Created in collaboration with [Gabe Chazanov](https://github.com/gabechaz).

Ruby-2.6.1

## Instructions

To launch this application, please follow the steps below:

-- Clone this repo in your computer's terminal.

-- Open repo in your text editor.

-- In your terminal, run `bundle install` to install the required dependencies.

-- Run `rails db:create` to create a local database.

-- Run `rails db:migrate` to add tables to the database.

-- Run `rails db:seed` to seed the database.

-- Run `rails s` to run the local server.

## Features

A user can log in, and username and password will be validated.

![Log In](https://user-images.githubusercontent.com/70274658/112049781-756c9300-8b26-11eb-8691-b74e384ce433.gif)


A user can view their own profile. They will see user info, amount of money in their wallet, pending trades proposed by the user, pending trades offered to the user, and a list of beanie babies in the user's collection.  

![General_profile](https://user-images.githubusercontent.com/70274658/112049914-9d5bf680-8b26-11eb-9471-54109399808b.gif)


A user can add a new beanie baby to their collection.

![User-adds-new-beanie](https://user-images.githubusercontent.com/70274658/112050390-2e32d200-8b27-11eb-8df9-2725ef947f01.gif)


A user can browse beanie babies available for trade from other users, by type. They'll see a list of all users that own that beanie, and be able to click to see the sellers' details. Users can also browse by seller instead of by beanie baby type.

![User-browse-by-baby](https://user-images.githubusercontent.com/70274658/112050528-58848f80-8b27-11eb-902d-a701a6a69de4.gif)


