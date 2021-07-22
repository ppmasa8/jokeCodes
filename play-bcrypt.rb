require 'bcrypt'

password1 = 'Too_long_didnot_readddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd'

bcrypt_pass = BCrypt::Password.create(password1)

p bcrypt_pass == password1
p bcrypt_pass == 'lllllllll'
p bcrypt_pass == 'Too_long_didnot_readddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddppp'

