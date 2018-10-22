require "rails"

module Dispatch
  class Railtie < Rails::Railtie
    initializer "dispatch.send_anonymized_rails_metrics" do
      Rails.logger.info "===== DISPATCH ====="
    end
  end
end
