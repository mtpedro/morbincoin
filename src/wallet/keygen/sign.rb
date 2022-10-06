require 'openssl'
require 'encrypto_signo'
require_relative 'config.rb'

string = "Your access code is 123456."

private_key = OpenSSL::PKey::RSA.new(File.read(PRIVATE_KEY_PATH))

signature = EncryptoSigno.sign(private_key, string)
puts signature