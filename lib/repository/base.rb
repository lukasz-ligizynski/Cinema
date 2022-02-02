# frozen_string_literal: true

module Repository
  class Base
    class << self
      delegate :all,
               to: :new
    end

    def raise_error(error_message)
      raise ::Repository::Error, error_message
    end

    def find_all
      adapter.order(:id).all
    rescue ::ActiveRecord::ActiveRecordError => e
      raise_error(e.message)
    end

    private

    def adapter
      self.class.module_parent.to_s.singularize.constantize
    end
  end
end
