require 'openssl'

key = OpenSSL::PKey::RSA.new(512)

File.open('private_key.pem', 'w') { |f| f.write(key.to_pem) }
File.open('public_key.pem', 'w')  { |f| f.write(key.public_key.to_pem) }