require 'openssl'
require_relative 'config.rb'

key = OpenSSL::PKey::RSA.new(512)

File.open(PRIVATE_KEY_PATH, 'w') { |f| f.write(key.to_pem) }
File.open(PUBLIC_KEY_PATH, 'w')  { |f| f.write(key.public_key.to_pem) }