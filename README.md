# ActiveAdminEnvironment

Change AcitiveAdmin appearance by rails environment.

![alt tag](/images/production.png)

## Installation

Add this line to your application's Gemfile:

    gem 'active_admin_environment'

After installed gem, execute:

    $ rails generate active_admin_environment:install

Generating default css and initializers:

    app/assets/stylesheets/active_admin_environment
    ├── development.css.scss
    └── production.css.scss
    config/initializers
    └── active_admin_environment.rb

## Usage

This gem is for environment named production, development.

development
![alt tag](/images/develop.png)

production
![alt tag](/images/production.png)

### Change color or add different environment

Edit initializer (config/initializers/active_admin_environment.rb)

Then execute bellow to regenerate css files :

    $ rails generate active_admin_environment:css

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

