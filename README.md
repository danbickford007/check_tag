# CheckTag

This gem allows you use a check_box_tag that will submit a value whether or not it is checked.  You can also specify which values you want the tag to submit when
checked and not checked.

## Installation

Add this line to your application's Gemfile:

    gem 'check_tag'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install check_tag

## Usage

<%= check_tag("id", "checked_value=true", "unchecked_value=false", "default=false") %>

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
