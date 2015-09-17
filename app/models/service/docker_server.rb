class Service < ActiveRecord::Base
  class DockerServer < Service::Compute
    def actions
      actions = super.merge :terminate

      # determine if action is available

      actions
    end

    def provision
      # TODO: IMPLEMENT DOCKER CLIENT - https://docs.docker.com/reference/api/docker_remote_api/
    end

    def start
    end

    def stop
    end

    def terminate
    end

    private

    def client
      @client ||= provider.settings
    end
  end
end
