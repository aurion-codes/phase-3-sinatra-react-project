class DoctorController < ApplicationController

    get '/doctors' do 
       doctors = Doctor.all
       doctors.to_json
    end

    get '/doctors/:id' do
        doctor = Doctor.find(params[:id])
        doctor.to_json
    end

    get '/doctors/:id/patients' do
        doctor = Doctor.find(params[:id])
        doctor.patients.to_json
    end

    post '/doctors' do 
        Doctor.create(first_name: params[:first_name], last_name: params[:last_name] , specialty: params[:specialty]).to_json
    end  

    patch '/doctors/:id' do 
        doctor = Doctor.find(params[:id])
        doctor.update(first_name: params[:first_name], last_name: params[:last_name] , specialty: params[:specialty])
        doctor.to_json
    end

    delete '/doctors/:id' do
        doctor = Doctor.find(params[:id])
        doctor.destroy
    end

        
end