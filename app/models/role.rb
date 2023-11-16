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
class Role < ApplicationRecord
  has_many :users, dependent: :nullify
end
