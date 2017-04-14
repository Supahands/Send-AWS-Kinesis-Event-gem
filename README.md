# SendAwsKinesisEvent

This gem is to send any generated event data to AWS Kinesis stream service.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'send_aws_kinesis_event'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install send_aws_kinesis_event

## Usage

Environment variable to be included in your application:
`AWS_REGION`
`AWS_ACCESS_KEY_ID`
`AWS_SECRET_ACCESS_KEY`
`KINESIS_STREAM_NAME`

Use SendAwsKinesisEvent.call(partition_key, data) in your application to send data to AWS Kinesis.

`partition_key` : event type
`data` : data to be sent to Kinesis

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Supahands/Send-AWS-Kinesis-Event-gem.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
