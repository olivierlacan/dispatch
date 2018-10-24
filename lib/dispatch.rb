require "dispatch/version"
require "dispatch/railtie"

module Dispatch
  WHITELIST = {
    rails: {
      configuration: [
        :api_only,
        :cache_store,
        :console,
        :log_level,
        :force_ssl,
        :file_watcher,
        generators: [:options],
        :public_file_server,
        :time_zone,
        :session_store,
        session_options: [:cookie_only]
      ]
    }
  }

  def self.retrieve_basic_configuration(configuration)
    configuration.each_with_object({}) do |config, object|
      next unless WHITELIST.include?(config)
      binding.pry
    end
  end
end
