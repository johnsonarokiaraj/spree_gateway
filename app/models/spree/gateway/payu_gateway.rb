module Spree
  class Gateway::PayuGateway < Gateway
    preference :username, :string
    preference :key, :string
    preference :salt, :string

    def provider_class
      ActiveMerchant::Billing::PayuInGateway
    end

    # (no authorize method).
    def auto_capture?
      true
    end

  end
end 
