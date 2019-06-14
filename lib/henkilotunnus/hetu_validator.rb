require 'active_model/validator'

module Henkilotunnus
  class HetuValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
      record.errors.add(attribute, options[:message] || :invalid) unless Hetu.valid?(value, allow_fake: options.fetch(:allow_fake, false))
    end
  end
end
