class Equipment < ApplicationRecord
  has_one :lending, dependent: :destroy
  belongs_to :registered_user, optional: true, class_name: "User"

  validate :type, :lab_equipment_name, :maker_name,
           :product_name, :purchase_year, presence: true

  enum type: {
    pc: 0,
    note_pc: 1,
    tera: 2,
    camera: 3,
    experiment: 4,
    others: 5
  }

end
