class SubmitsController < ApplicationController
  def index
      @submits = Submit.all
  end
   
   def new
      @submit = Submit.new
   end
   
   def create
      @submit = Submit.new(submit_params)
      
      if @submit.save
         redirect_to submits_path, notice: "The assignment #{@submit.name} has been uploaded."
      else
         render "new"
      end
      
   end
   
   def destroy
      @submit = Submit.find(params[:id])
      @submit.destroy
      redirect_to submits_path, notice:  "The assignment #{@submit.name} has been deleted."
   end
   
   private
      def submit_params
      params.require(:submit).permit(:name, :attachment)
      end
   
end