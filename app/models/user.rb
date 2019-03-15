class User < ApplicationRecord
    before_save {self.email=email.downcase}
    
    VALID_EMAIL_REGEX = '\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z'
    validates :username, presence: true, length: {minimum: 3, maximum: 25}, uniqueness: {case_sensitive: false}
    validates :email, presence: true, length: {minimum: 3, maximum: 25}, uniqueness: {case_sensitive: false},format: {with: /VALID_EMAIL_REGEX/}
    
    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }
end 