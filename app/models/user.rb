# rubocop:disable all
# class User < ApplicationRecord
#   # Include default Devise modules for user authentication
#   # Other available modules include:
#   # - :confirmable: Sends emails with confirmation instructions after sign-up
#   # - :lockable: Locks an account after a specified number of failed login attempts
#   # - :timeoutable: Expires user sessions that have been idle for a period
#   # - :trackable: Tracks sign-in count, timestamps, and IP addresses
#   # - :omniauthable: Adds support for third-party authentication (e.g., Google, Facebook)
#   devise :database_authenticatable, :registerable,
#          :recoverable, :rememberable, :validatable
#   
#   # Association: A user can have many posts
#   # If a user is deleted, all associated posts will also be destroyed
#   has_many :posts, dependent: :destroy
# end
