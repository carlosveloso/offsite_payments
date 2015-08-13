require 'test_helper'

class EvertecTest < Test::Unit::TestCase
  include OffsitePayments::Integrations

  def test_notification_method
    assert_instance_of Evertec::Notification, Evertec.notification('name=cody')
  end
end
