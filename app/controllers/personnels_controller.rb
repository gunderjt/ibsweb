class PersonnelsController < ApplicationController
  before_action :set_personnel, only: [:show, :edit, :update, :destroy]
  respond_to :html

  def index
    @personnels = Personnel.all
    respond_with(@personnels)
  end

  def show
    respond_with(@personnel, location: personnel_path(@personnel.uname))
  end

  def new
    @personnel = Personnel.new
    @personnel.employment_records.build
    @personnel.websites.build
    @personnel.academic_degrees.build
    @personnel.contact_infos.build
    @personnel.contact_details.build
    #binding.pry
    respond_with(@personnel)
  end

  def edit
  end

  def create
    @personnel = Personnel.new(personnel_params)
    @personnel.save
    respond_with(@personnel, location: personnel_path(@personnel.uname))
  end

  def update
    #binding.pry
    @personnel.update(personnel_params)
    respond_with(@personnel, location: personnel_path(@personnel.uname))
  end

  def destroy
    @personnel.destroy
    respond_with(@personnel)
  end

  private
    def set_personnel
      @personnel = Personnel.find_by_uname(params[:uname])
    end

    def personnel_params
      params.require(:personnel).permit(:uname, :mailing_list, :delete_image,
      :formally_affiliated, :retiree, :rostered, :first_name, :last_name, :avatar, 
      :salutation, :notes, :research_interests, :skills_expertise, :bio, :employee_id, 
      employment_records_attributes: [:id, :position_id, :affiliation_id, :start_date, :end_date, :_destroy],
      websites_attributes: [:id, :_destroy, :website_type_id, :url, :display_name],
      academic_degrees_attributes: [:id, :_destroy, :degree_type_id, :year_awarded, :in_progress, :university, :department],
      contact_details_attributes: [:id, :_destroy, :job_title, :organization, :address, :city, :state, :country, :zipcode, :phone, :email, :alt_phone, :alt_email],
      contact_infos_attributes: [:id, :_destroy, :display, :office_number, :phone_number, :email] 
      )
    end
end
