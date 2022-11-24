class Api::V1::PlansController < Api::V1::BaseController
  def index
    @plans = policy_scope(Plan)
  end
end
