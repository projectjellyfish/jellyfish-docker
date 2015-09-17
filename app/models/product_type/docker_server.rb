class ProductType < ActiveRecord::Base
  class DockerServer < ProductType
    def self.load_product_types
      return unless super

      transaction do
        [
          set('Docker Server', '47984b66-6834-41db-b09c-d1adcae8f965', provider_type: 'Provider::Docker')
        ].each do |s|
          create! s.merge!(type: 'ProductType::DockerServer')
        end
      end
    end

    def description
      'Docker Server Instance'
    end

    def tags
      %w(docker server)
    end

    def product_questions
      [
        { name: :repo_url, value_type: :string, field: :text, label: 'Repository URL', required: true }
      ]
    end

    def order_questions
      []
    end

    def service_class
      'Service::DockerServer'.constantize
    end
  end
end
