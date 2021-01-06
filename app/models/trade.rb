class Trade < ApplicationRecord
 belongs_to :g_ownership, class_name: "Ownership" , optional: true
 belongs_to :d_ownership, class_name: "Ownership", optional: true

def confirm_trade(self_ownership, for_ownership)
    self_ownership.user = for_ownership.user
    for_ownership.user = self_ownership.user
end


end
