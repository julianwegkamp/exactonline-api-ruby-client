module Elmas
  class DirectDebitMandate
    # An account needs a name ????
    include Elmas::Resource

    def valid_actions
      [:get, :post]
    end

    def base_path
      "cashflow/DirectDebitMandates"
    end

    def mandatory_attributes
      [:account, :bank_account]
    end

    # https://start.exactonline.nl/docs/HlpRestAPIResourcesDetails.aspx?name=CRMAccounts
    def other_attributes # rubocop:disable Metrics/MethodLength
      [
        :id,
        :cancellation_date,
        :description,
        :first_send,
        :payment_type,
        :reference,
        :signature_date,
        :type,
      ]
    end
  end
end
