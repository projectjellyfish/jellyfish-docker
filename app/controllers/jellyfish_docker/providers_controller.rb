module JellyfishDocker
  class ProvidersController < JellyfishDocker::ApplicationController
    after_action :verify_authorized

    # PLACEHOLDER FOR CLIENT ENDPOINTS THAT MAY BE NEEDED

    private

    def provider
      @provider ||= Provider.find params[:id]
    end
  end
end
