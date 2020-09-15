# == Schema Information
#
# Table name: contacts
#
#  id      :bigint           not null, primary key
#  name    :string(255)
#  address :string(255)
#  phone   :integer
#  kind_id :bigint
#
class Contact < ApplicationRecord
  belongs_to :kind
end
