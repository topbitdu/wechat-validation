require 'spec_helper'

describe Wechat::Validation::Signature do

  it 'should be able to create' do

    signature_123 = described_class.create 'nonce', '123', 'token'
    expect(signature_123.nil?).to be_falsey

    signature_1234 = described_class.create 'nonce', '1234', 'token'
    expect(signature_1234.nil?).to be_falsey
    expect(signature_1234==signature_123).to be_falsey

    signature_123_again = described_class.create 'nonce', '123', 'token'
    expect(signature_123_again.nil?).to be_falsey
    expect(signature_123_again).to      eq(signature_123)

    signature_123_once_more = described_class.create 'nonce', 123, 'token'
    expect(signature_123.nil?).to be_falsey
    expect(signature_123).to      eq(signature_123_once_more)

  end

end
