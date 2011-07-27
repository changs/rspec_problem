class User < ActiveRecord::Base
  has_secure_password
#HUMANIZED_ATTRIBUTES = {
#  :password_digest => "Password"
#}
#
#def self.human_attribute_name(attr, options={})
#  HUMANIZED_ATTRIBUTES[attr.to_sym] || super
#end
  
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :fullname, presence: true, length: {maximum: 30}
  validates :password, length: { in: 5..30 }
  validates :email, format: {with: email_regex },
              uniqueness: { case_sensitive: false }, length: {maximum: 30}
  validates :name, presence: true, uniqueness: { case_sensitive: false },
            length: { maximum: 18 }
end
