# Migration structure

## pseudo

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
    
- // Comment(belongs to Article)
    - article:references
    - Using social comment plugin?

- Section(belongs to Article)
    - article:references
    - template:integer null: false, default: 1
    - title
    
- // SConfig(belongs to Section)
    - force_scroll:boolean
    - black_out:boolean
    
- SImage

- SVideo

- SCarousel

