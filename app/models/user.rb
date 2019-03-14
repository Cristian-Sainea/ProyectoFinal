class user < ApplicationRecord
    before_save {self.email=email.downcase}
    
    VALID_EMAIL_REGEX = \A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z
    validates :username, present: true, length: {minimum: 3, maximum: 25},, uniqueness: {case_sensitive: false}
    validates :email, present: true, length: {minimum: 3, maximum: 25},, uniqueness: {case_sensitive: false}, format: {with: VALID_EMAIL_REGEX}
end 