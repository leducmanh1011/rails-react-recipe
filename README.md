## How to set up a Ruby on Rails project with a React frontend 🙂

In this post

[GET STARTED HERE](https://www.digitalocean.com/community/tutorials/how-to-set-up-a-ruby-on-rails-project-with-a-react-frontend)

### Step 1 — Creating a New Rails Application

```ruby
rails new rails_react_recipe -d=mysql -T --webpack=react --skip-coffee
```

- The `-d` flag specifies the preferred database engine, which in this case is MySQL.
- The `-T` flag instructs Rails to skip the generation of test files, since you won’t be writing tests for the purposes of this tutorial. This command is also suggested if you want to use a Ruby testing tool different from the one Rails provides.
- The `--webpack` instructs Rails to preconfigure for JavaScript with the webpack bundler, in this case specifically for a React application.
- The `--skip-coffee` asks Rails not to set up CoffeeScript, which is not needed for this tutorial.

### Step 2 — Setting Up the Database

Need config file `config/database.yml`

```ruby
rails db:create


#Output
Created database 'rails_react_recipe_development'
Created database 'rails_react_recipe_test'
```

### Step 3 — Installing Frontend Dependencies

```ruby
yarn add react-router-dom bootstrap jquery popper.js
```

![image](https://user-images.githubusercontent.com/46446038/112088070-b06fd480-8bc1-11eb-8b4a-f5a4fa5b35dc.png)


### Step 4 — Setting Up the Homepage


```ruby
rails g controller Homepage index
```

### Step 5 — Configuring React as Your Rails Frontend

Change name file `hello_react.jsx` to `Index.jsx`
```ruby
mv /app/javascript/packs/hello_react.jsx /app/javascript/packs/Index.jsx

```

Open file `app/views/layouts/application.html.erb`, inside tag <head></head> includes

```ruby
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<%= javascript_pack_tag 'Index' %>
```
And follow: [Step 5](https://www.digitalocean.com/community/tutorials/how-to-set-up-a-ruby-on-rails-project-with-a-react-frontend#step-5-%E2%80%94-configuring-react-as-your-rails-frontend)

### Next steps, follow:
- [Step 6 — Creating the Recipe Controller and Model](https://www.digitalocean.com/community/tutorials/how-to-set-up-a-ruby-on-rails-project-with-a-react-frontend#step-6-%E2%80%94-creating-the-recipe-controller-and-model)
- [Step 7 — Viewing Recipes](https://www.digitalocean.com/community/tutorials/how-to-set-up-a-ruby-on-rails-project-with-a-react-frontend#step-7-%E2%80%94-viewing-recipes)
- [Step 8 — Creating Recipes](https://www.digitalocean.com/community/tutorials/how-to-set-up-a-ruby-on-rails-project-with-a-react-frontend#step-8-%E2%80%94-creating-recipes)
- [Step 9 — Deleting Recipes](https://www.digitalocean.com/community/tutorials/how-to-set-up-a-ruby-on-rails-project-with-a-react-frontend#step-9-%E2%80%94-deleting-recipes)


### Demo
1. Home page

![image](https://user-images.githubusercontent.com/46446038/112089405-2ecd7600-8bc4-11eb-88a8-d91353acbf5d.png)

2. List recipes

![image](https://user-images.githubusercontent.com/46446038/112089434-3db42880-8bc4-11eb-8e60-fb485a62d6af.png)

3. Detail recipe

![image](https://user-images.githubusercontent.com/46446038/112089455-460c6380-8bc4-11eb-9029-961ce981c399.png)

4. Creating recipe

![image](https://user-images.githubusercontent.com/46446038/112089478-502e6200-8bc4-11eb-8750-a290410c7e65.png)
