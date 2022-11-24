class Api::V1::ResourcesController < Api::V1::BaseController
  def index
    @resources = policy_scope(Resource)
  end
end
