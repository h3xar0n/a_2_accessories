### A² Accessories

This production-ready app is intended to showcase my abilities with Ruby on Rails. It's currently hosted on Heroku.

## Features

* Forms and automatic mailers sent upon form submission, signup, and purchase
* Authentication: Encrypted passwords and lost password retrieval system
* Authorization: Admin priviliges to enable moderating comments and to prevent abuse of CRUD resources, 
  e.g. a visitor destroying or creating products, changing their prices, or viewing the user index.
* Validation and pagination for ratings and comments in product view
* Extensive use of Sass and CoffeeScript for more automated workflow
* Unit and functional tests
* Use of AJAX to send and fetch only the data needed without reloading the page every time 
* Fully functional and secure payment system through Stripe
* ActiveJob and ActionCable allow streaming and broadcasting of new comment/rating posts across different windows and accounts

## Tools

* Devise
* PostgreSQL
* Memcached for traditional caching  
* Redis for better use with data structures, less arbitrary data removal
* Byebug, RSpec, FactoryGirl, and Brakeman for testing, debugging, and security
