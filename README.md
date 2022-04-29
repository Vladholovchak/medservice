# medservice

## Configuration

### Ruby `3.0.2`
### Rails `7.0.2`
### Database `PostgreSQL 12`
### Node `15.9.0`
### CSS `Tailwind`
## Available scripts

### `bundle exec rake db:create`

Creates the database for the current env

### `bundle exec rake db:schema:load`

Creates tables and columns within the existing database following schema.rb.
This will delete existing data.

### `bundle exec rake db:migrate`

Runs migrations for the current env that have not run yet

### `bundle exec rake db:seed`

Runs the db/seed.rb file

### `bundle exec rake db:setup`

Does db:create, db:schema:load, db:seed
