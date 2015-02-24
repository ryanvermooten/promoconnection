class MaterialsSupplier < ActiveRecord::Base
  belongs_to :supplier
  belongs_to :material
end