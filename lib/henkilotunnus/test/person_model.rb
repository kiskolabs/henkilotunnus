require 'active_model'

module Henkilotunnus
  module Test
    # A dummy model for testing the validator.
    class PersonModel
      include ActiveModel::Validations

      validates :pin, hetu: true
      validates :pin_message, hetu: { message: 'custom message' }
      validates :fake_pin, hetu: { allow_fake: true }

      attr_reader :pin
      attr_reader :pin_message
      attr_reader :fake_pin

      def initialize(pin)
        @pin = pin
        @pin_message = pin
        @fake_pin = pin
      end
    end
  end
end
