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
      [{ name: :docker_host, value_type: :string, field: :text, label: 'Docker Host URL', required: :if_new },
       { name: :username, value_type: :string, field: :text, label: 'Docker Username', required: :if_new },
       { name: :password, value_type: :password, field: :password, label: 'Docker Password', required: :if_new }
      ]
    end
  end
end
