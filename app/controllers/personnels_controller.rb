class PersonnelsController < ApplicationController
  before_action :set_personnel, only: [:show, :edit, :update, :destroy]

  def index
    @personnels = Personnel.all
    respond_with(@personnels)
  end

  def show
    respond_with(@personnel)
  end

  def new
    @personnel = Personnel.new
    respond_with(@personnel)
  end

  def edit
  end

  def create
    @personnel = Personnel.new(personnel_params)
    @personnel.save
    respond_with(@personnel)
  end

  def update
    @personnel.update(personnel_params)
    respond_with(@personnel)
  end

  def destroy
    @personnel.destroy
    respond_with(@personnel)
  end

  private
    def set_personnel
      @personnel = Personnel.find(params[:id])
    end

    def personnel_params
      params.require(:personnel).permit(:uname, :mailing_list, :formally_affiliated, :retiree, :rostered, :first_name, :last_name, :salutation, :notes, :research_interests, :skills_expertise, :bio, :employee_id)
    end
end
