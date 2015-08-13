require 'test_helper'

class EvertecNotificationTest < Test::Unit::TestCase
  include OffsitePayments::Integrations

  def setup
    @evertec = Evertec::Notification.new(http_raw_data)
  end

  def test_accessors
    assert @evertec.complete?
    assert_equal "", @evertec.status
    assert_equal "", @evertec.transaction_id
    assert_equal "", @evertec.item_id
    assert_equal "", @evertec.gross
    assert_equal "", @evertec.currency
    assert_equal "", @evertec.received_at
    assert @evertec.test?
  end

  def test_compositions
    assert_equal Money.new(3166, 'USD'), @evertec.amount
  end

  # Replace with real successful acknowledgement code
  def test_acknowledgement

  end

  def test_send_acknowledgement
  end

  def test_respond_to_acknowledge
    assert @evertec.respond_to?(:acknowledge)
  end

  private
  def http_raw_data
    ""
  end
end
