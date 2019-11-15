require 'jwt'

SECRET_KEY = '1k2oh3d91'
ALG = 'HS256'

def token_encode(user)
    return JWT.encode(user,SECRET_KEY,ALG)
end

def token_decode(token)
    return JWT.decode(token,SECRET_KEY,true,{algorithm: ALG}).first
end