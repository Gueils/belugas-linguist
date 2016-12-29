![belugas](belugas.png)

Belugas is a command line application for feature detection on any git repository.

## Table of contents
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'belugas'
```

And then execute:

```console
% bundle
```

Or install it yourself as:

```console
% gem install belugas
```

## Usage

You can run belugas on any git project.

```console
% belugas report
```

If you have another path where the project is, you can simply run:

```console
% belugas report /workspace/repos/my_project
```

### Options for belugas

| Option Name  | Description | Alias | Default | Values |
| ------------- | ------------- | ------------- | ------------- | ------------- |
| --includes  | The type of report to include  | -i | project | project,languages | 
| --format | The output format  | -f | table | json or table |


### Running with Docker

You first need to `cd` to the git project and then:

```console
% docker run --rm -v $(pwd):/code icalialabs/belugas:0.0.1
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/belugas. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

