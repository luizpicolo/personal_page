
# Personal Page

[![Build Status](https://travis-ci.org/luizpicolo/personal_page.svg)](https://travis-ci.org/luizpicolo/personal_page)
[![Code Climate](https://codeclimate.com/github/luizpicolo/personal_page/badges/gpa.svg)](https://codeclimate.com/github/luizpicolo/personal_page)

## Execute project

    git clone git@github.com:luizpicolo/personal_page.git
    bundle install
    cp config/database.example.yml config/database.yml # Need change configuration
    rake db:create
    rake db:migrate

    # Generete admin user
    rake db:seed

    # Local Server
    rails s
    open http://localhost:3000

## Dependencies

- Ruby 2.2.0
- Mysql 5.5+ or Postgre 9.3+ DataBase
- rvm 1.25.x+ (optional)


## Execute test

    rspec

---

(c) 2015 Luiz Picolo
