# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  #  :omniauthable, omniauth_providers: [:google]
  belongs_to :role, optional: true
  before_create :set_default_role

  private

  def set_default_role
    self.role ||= Role.find_by(slug: 'default')
  end
end
