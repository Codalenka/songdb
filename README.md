# SONGDB



Codaisseur homework assignment. A database with artists and their songs.

![screenshot_from_2016-11-20_21-21-28_s3plnn](https://cloud.githubusercontent.com/assets/22615915/20764463/94a4210a-b72e-11e6-8be6-cae0677e3413.png)



## Running Locally

Make sure you have [Ruby](https://www.ruby-lang.org/en/) and [Bundler](http://bundler.io/) installed.

```bash
git clone git@github.com:MalenkavanOmmen/songdb.git
cd songdb
bundle install
rake db:create db:migrate db:seed
rails server
```


