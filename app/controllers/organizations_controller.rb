class OrganizationsController < ApplicationController

  def index
    @orgs = current_user.organizations
    render json: @orgs
  end
end
