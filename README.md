# BinChecker

Bin checker identifies Turkish banks with bin numbers, It bases on [berkayunal](https://github.com/berkayunal)'s bin [list](https://gist.github.com/berkayunal/1595676).

## Requirements

Before generating your application, you will need:

* Ruby ~> 2.0
* Rails ~> 3.0 or Rails ~> 4.0

## Installation

Add this line to your application's Gemfile:

    gem 'bin_checker'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bin_checker

After installation you should run

    $ rails g bin_checker:migration
    $ rake db:migrate
    $ rake bin_numbers:insert
    
for seeding datas.

## Usage

When you want to get bank infos just run like

  card = BinNumber.find_by bin_number: '454894'

  card.bank_name
  => "T.C. ZİRAAT BANKASI A.Ş."

  card.card_type
  => "VISA"

  card.sub_type
  => "CLASSIC"

  card.virtual
  => false

  card.prepaid
  => false

## Bugs and  Feedback

If you discover any bugs or want to drop a line, feel free to create an issue on GitHub.

http://github.com/lab2023/bin_checker

## Contributing

BinChecker uses [TomDoc](http://tomdoc.org/), [rDoc](http://rubydoc.info/gems/kangal) and [SemVer](http://semver.org/), and takes it seriously.

Once you've made your great commits:

1. Fork Template
2. Create a topic branch - `git checkout -b my_branch`
3. Push to your branch - `git push origin my_branch`
4. Create a Pull Request from your branch
5. That's it!

## Credits

![lab2023](http://lab2023.com/assets/images/named-logo.png)

- BinChecker is maintained and funded by [lab2023 - information technologies](http://lab2023.com/)
- Thank you to all the [contributors!](https://github.com/kebab-project/kangal/graphs/contributors)
- The names and logos for lab2023 are trademarks of lab2023, inc.

## License

Copyright 2014 lab2023 - information technologies
