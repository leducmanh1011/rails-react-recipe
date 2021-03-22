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
