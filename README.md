# Wechat Validation 微信服务器验证库

[![Documentation](http://img.shields.io/badge/docs-rdoc.info-blue.svg)](http://www.rubydoc.info/gems/wechat-validation/frames)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](http://opensource.org/licenses/MIT)

[![Gem Version](https://badge.fury.io/rb/wechat-validation.svg)](https://badge.fury.io/rb/wechat-validation)
[![Dependency Status](https://gemnasium.com/badges/github.com/topbitdu/wechat-validation.svg)](https://gemnasium.com/github.com/topbitdu/wechat-validation)

The Wechat Server Validation Library is a code base for validating the HTTP server in Wechat.
微信服务器验证库用于处理[微信服务器验证请求](http://mp.weixin.qq.com/wiki/8/f9a0b8382e0b77d87b3bcc1ce6fbc104.html#.E7.AC.AC.E4.BA.8C.E6.AD.A5.EF.BC.9A.E9.AA.8C.E8.AF.81.E6.9C.8D.E5.8A.A1.E5.99.A8.E5.9C.B0.E5.9D.80.E7.9A.84.E6.9C.89.E6.95.88.E6.80.A7)。



## Recent Update

Check out the [Road Map](ROADMAP.md) to find out what's the next.
Check out the [Change Log](CHANGELOG.md) to find out what's new.



## Installation

Add this line to your application's Gemfile:

```ruby
gem 'wechat-validation'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install wechat-validation



## Usage

```ruby
actual_signature = ::Wechat::Validation::Signature.create(params[:nonce], params[:timestamp], Rails.application.secrets.wechat_validation_token)
if params[:signature]==actual_signature
  # Correct
else
  # Wrong
end
```



## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).



## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/topbitdu/wechat-validation. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.



## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
