# == Schema Information
#
# Table name: kinds
#
#  id          :bigint           not null, primary key
#  description :string(255)
#
class Kind < ApplicationRecord
  has_many :contacts
end
