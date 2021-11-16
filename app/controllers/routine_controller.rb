# This controller will control the flow of any fetches made in our routine route. 
class RoutineController < ApplicationController
    
    # Add your routes here
    get "/routines" do
      routines = Routine.all
      routines.to_json
    end

    get "/routines/:id" do
      routine = Routine.find_by_id(params[:id])
      routine.to_json
    end
  
  end
  