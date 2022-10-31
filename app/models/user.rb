class User < ApplicationRecord
  has_many :sent_requests, foreign_key: "sender_id", class_name: "friend_request"
  has_many :recieved_requests, foreign_key: "recipient_id", class_name: "friend_request"
  has_and_belongs_to_many :friends, foreign_key: "friend_id", class_name: "user"
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


end
