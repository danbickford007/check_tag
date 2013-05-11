class TestController < ActionController::Base
  include Rails.application.routes.url_helpers

  def render(*attributes); end
end

class PostsController < TestController
  # restful_controller # This is the gem I'm testing, it will create all 7 default CRUD actions for me.
end
