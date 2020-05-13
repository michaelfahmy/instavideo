# InstaVideo
[![Build Status](https://travis-ci.com/michaelfahmy/instavideo.svg?token=mWrJxJskRjZTzzWsk7rr&branch=master)](https://travis-ci.com/michaelfahmy/instavideo)

## Requirements:
* Ruby 2.7.1
* Rails 6.0.3
* PostgreSQL 12.2
* Node ~>13.12.0
* Yarn ~>1.22.4

## Setup
1. `yarn`
2. `bundle`
3. Configure db with your creds in `config/database.yml`
4. `rails db:create db:migrate db:seed`
5. You're good to go now ;)

## Development
- Install foreman locally using `gem install foreman`
- Then run `foreman s`

## Commands
- Linters checks:
  - `rubocop --disable-pending-cops`
  - `haml-lint`
- Security checks: `brakeman -6 -q`

## Testing
- `rspec`
- `undercover` to test coverage
