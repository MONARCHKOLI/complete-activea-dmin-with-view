class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def current_patient
    Patient.first || Patient.create
  end
end
