# A² Accessories

This production-ready app is intended to showcase my abilities with Ruby on Rails. It's a wedding accessory store in the same style as the site I made for Glam by Adelina (www.glambyadelina.com), and will be used for real transactions once I add a cart and shipping feature.

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

## To-Do List

### Overarching

* Make more visually appealing/involved
* Add ability to fill out ordering information before payment

### Front-End

* Create a 404 page
* Determine where and whether to use Angular, React, and/or Vue
* Consolidate/reorganize/refactor SCSS
* Add SASS plugins!!!
* Create view for orders
* Images fade in on load

### Back-End

* Even more test coverage. Test, test, test.
* Fix adding username on signup; currently doesn't save
* Clean up Gemfile to go in logical order
* Create logic for orders
* Read over with Brian's style guide