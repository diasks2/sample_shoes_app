# encoding: utf-8

Shoes.setup do
  gem 'encrypted_strings'
end

require 'encrypted_strings'

Shoes.app do
  stack do
    flow do
      encrypted = "test".encrypt(:symmetric, algorithm: 'des-ecb', password: 'hello-world')
      decrypted = encrypted.decrypt(:symmetric, algorithm: 'des-ecb', password: 'hello-world')
      para decrypted
    end
  end
end
