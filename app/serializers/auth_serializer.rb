class AuthSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :password_digest
end
