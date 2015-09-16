Rails.application.routes.draw do

  mount JellyfishDocker::Engine => "/jellyfish_docker"
end
