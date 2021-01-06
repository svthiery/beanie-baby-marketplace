class Trade < ApplicationRecord
 belongs_to :g_ownership, class_name: "Ownership" , optional: true
 belongs_to :d_ownership, class_name: "Ownership", optional: true
end
