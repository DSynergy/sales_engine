require_relative 'transactions_repository'

class Transaction
  attr_reader :repo, :id, :credit_card_number, :invoice_id, :credit_card_expiration_date, :result, :created_at, :updated_at

  def initialize(data,repo)
    @id = data[:id].to_i
    @invoice_id = data[:invoice_id].to_i
    @credit_card_number = data[:credit_card_number]
    @credit_card_expiration_date = data[:credit_card_expiration_date]
    @result = data[:result]
    @created_at = data[:created_at]
    @updated_at = data[:updated_at]
    @repo = repo
  end


end