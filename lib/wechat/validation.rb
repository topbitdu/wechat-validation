require 'wechat/validation/version'

module Wechat
  module Validation

    def sign(nonce, timestamp, token)
      actual_signature = Digest::SHA1.hexdigest [ nonce, timestamp, token ].sort.join('')
    end

  end
end
