class Wechat::Validation::Signature

  extend Wechat::Core::Common

  ##
  # 验证服务器地址的有效性
  # http://mp.weixin.qq.com/wiki/8/f9a0b8382e0b77d87b3bcc1ce6fbc104.html#.E7.AC.AC.E4.BA.8C.E6.AD.A5.EF.BC.9A.E9.AA.8C.E8.AF.81.E6.9C.8D.E5.8A.A1.E5.99.A8.E5.9C.B0.E5.9D.80.E7.9A.84.E6.9C.89.E6.95.88.E6.80.A7
  #
  # 开发者通过检验signature对请求进行校验（下面有校验方式）。
  # 若确认此次GET请求来自微信服务器，请原样返回echostr参数内容，则接入生效，成为开发者成功，否则接入失败。
  # 加密/校验流程如下：
  # 1. 将token、timestamp、nonce三个参数进行字典序排序
  # 2. 将三个参数字符串拼接成一个字符串进行sha1加密
  # 3. 开发者获得加密后的字符串可与signature对比，标识该请求来源于微信
  def self.create(nonce, timestamp, token)

    assert_present! :nonce,     nonce
    assert_present! :timestamp, timestamp
    assert_present! :token,     token

    Digest::SHA1.hexdigest [ nonce.to_s, timestamp.to_s, token.to_s ].sort.join

  end

end
