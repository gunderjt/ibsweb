class AffiliationsController < ApplicationController
  before_action :set_affiliation, only: [:show, :edit, :update, :destroy]
  respond_to :html

  def index
    @affiliations = Affiliation.all
    respond_with(@affiliations)
  end

  def show
    respond_with(@affiliation)
  end

  def new
    @affiliation = Affiliation.new
    respond_with(@affiliation)
  end

  def edit
  end

  def create
    @affiliation = Affiliation.new(affiliation_params)
    @affiliation.save
    respond_with(@affiliation)
  end

  def update
    @affiliation.update(affiliation_params)
    respond_with(@affiliation)
  end

  def destroy
    @affiliation.destroy
    respond_with(@affiliation)
  end

  private
    def set_affiliation
      @affiliation = Affiliation.find(params[:id])
    end

    def affiliation_params
      params.require(:affiliation).permit(:id, :institute_name, :website, :phone, 
          :fax, :email, :parent_institution_id, :abv
        )
    end 
end