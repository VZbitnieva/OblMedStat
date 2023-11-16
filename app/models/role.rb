# frozen_string_literal: true

# == Schema Information
#
# Table name: roles
#
#  id                            :bigint           not null, primary key
#  name(Повна назва)             :string
#  slug(Корока назва/позначення) :string
#  created_at                    :datetime         not null
#  updated_at                    :datetime         not null
#
# Indexes
#
#  index_roles_on_slug  (slug) UNIQUE
#
class Role < ApplicationRecord
  has_many :users, dependent: :nullify

  validates :name, presence: true
  validates :slug, presence: true, uniqueness: true, length: { maximum: 10 }
end
