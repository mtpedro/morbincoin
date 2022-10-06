require 'openssl'
require 'encrypto_signo'
require_relative 'config.rb'

password = 'boost facile'

signature = "
    gPMlcPEUmdxQXtpkCsHf4MlZBA6Ynz6bRg2iUPiRSn6sI5qQihYFNEYHpalB
    LyIMzWYntoxM3ZPNyr4mZ3TSAg==
"

public_key = OpenSSL::PKey::RSA.new(File.read(PUBLIC_KEY_PATH),password)

puts EncryptoSigno.verify(public_key, signature, "Your access code is 123456.")