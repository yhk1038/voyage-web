# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

- Magazine
    - title

- MConfig(belongs to Magazine)
    - magazine:references
    - article_number_shape
    
- Article(belongs to Magazine)
    - magazine:references
    - title
    - subtitle
    - header_img
    - header_vod
    
- Comment(belongs to Article)
    - article:references
    - Using social comment plugin?

- Section(belongs to Article)
    - article:references
    - template:integer null: false, default: 0
    - title
    
- SConfig(belongs to Section)
    - force_scroll:boolean
    - black_out:boolean
    
- SImage

- SVideo

- SCarousel

