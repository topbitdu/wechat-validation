require 'wechat/validation/version'

require 'wechat/validation/signature'

module Wechat
  module Validation

    def self.sign(nonce, timestamp, token)
      actual_signature = Digest::SHA1.hexdigest [ nonce, timestamp, token ].sort.join('')
    end

    class << self
      deprecate sign: :'Wechat::Validation::Signature.create', deprecator: ActiveSupport::Deprecation.new('1.0', 'wechat-validation')
    end

  end
end
