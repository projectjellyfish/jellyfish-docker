class RegisteredProvider < ActiveRecord::Base
  class Docker < RegisteredProvider
    def self.load_registered_providers
      return unless super

      transaction do
        [
          set('Docker', 'bb92f39d-9823-40f3-8d9d-c4eda1962825')
        ].each { |s| create! s.merge!(type: 'RegisteredProvider::Docker') }
      end
    end

    def provider_class
      'Provider::Docker'.constantize
    end

    def description
      'Docker Services'
    end

    def tags
      ['docker']
    end

    def questions
      [ { name: :docker_server, value_type: :password, field: :text, label: 'Docker Server URL', required: :if_new } ]
    end
  end
end
