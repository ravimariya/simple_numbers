require "simple_numbers/version"

module SimpleNumbers
  HELPER = ActionController::Base.helpers

  module Format
    def self.included(recipient)
      recipient.extend(ClassMethods)
      recipient.class_eval do
        include InstanceMethods
      end
    end

    module ClassMethods
    end

    module InstanceMethods
      
      # Format Money

      def usd(**options)
        options.delete(:unit) if options.key?(:unit)
        HELPER.number_to_currency(self, options)
      end

      def inr(**options)
        options.delete(:unit) if options.key?(:unit)
        HELPER.number_to_currency(self, options.merge!(unit: 'Rs. '))
      end

      # Format Percentage

      def percentage(**options)
        HELPER.number_to_percentage(self, options)
      end
    
      # Format Phone Number

      def phone(**options)
        HELPER.number_to_phone(self, options)
      end

      # Format Size

      def storage(**options)
        HELPER.number_to_human_size(self, options)
      end

      # Format Number

      def human_number(**options)
        HELPER.number_to_human(self, options)
      end
    end
  end
end
Fixnum.send :include, SimpleNumbers::Format
Float.send :include, SimpleNumbers::Format
String.send :include, SimpleNumbers::Format