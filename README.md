# Dispatch

To help the Rails core team gather information about Rails configurations
this gem dispatches (hah) basic anonymized data about which parts of Rails
your application uses.

It only sends data about whitelisted Rails frameworks, and nothing
about your Gemfile, or any non-Rails portions of your codebase.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'dispatch'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dispatch

## Usage

There's nothing else you need to do. Dispatch automatically inserts
itself inside of the Rails boot processing using a Railtie hook.

It only does so once, at boot time, not periodically or after any
specific event, to reduce the number of HTTP requests.

## Development

After checking out the repo, run `bin/setup` to install dependencies.
You can also run `bin/console` for an interactive prompt that will allow
you to experiment.

To install this gem onto your local machine, run `bundle exec rake
install`. To release a new version, update the version number in
`version.rb`, and then run `bundle exec rake release`, which will create
a git tag for the version, push git commits and tags, and push the
`.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/olivierlacan/dispatch.
