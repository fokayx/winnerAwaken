== README

1. bundle install

2. rake db:migraete

3. add file config/initializers/app_secret.rb 

set mail deliver sevice account and password

```
ENV["MANDRILL_USERNAME"] = "your mail"
ENV["MANDRILL_PASSWORD"] = "your passwor"
```

4. if need admin managerment 

```
# /config/routes.rb

devise_for :admins, path: "daikichi/admins", :skip => 'registrations'

delelte :skip => 'registrations', make registration enable

devise_for :admins, path: "daikichi/admins",

```
