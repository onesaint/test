class MonkeysController < ApplicationController

http_basic_authenticate_with name: "pass", password: "word", only: [:admin]
 
 def index
   @search_location = params[:location]|| session[:location]
   @sort = params[:sort] || session[:sort]
    case @sort
    when 'deadline'
      ordering,@deadline_header = {:order => :deadline}
    end    
    if params[:sort] != session[:sort]
      session[:sort] = @sort
      #redirect_to :sort => sort and return
    end
    if(@search_location != nil  && @search_location != "")
      @jobs = Job.find_all_by_province(@search_location, ordering)
      if @jobs.count == 0
         flash[:notice] = "province #{@search_location} was not found in database."
      end
     else @jobs = Job.all(ordering)
    end

  end

  def new    

  end 


  def create    
    if @jobs = Job.create(params[:job]).valid?
      redirect_to monkeys_path
    else 
      redirect_to('/monkeys/error')
    end
  end
   
  def destroy
    @jobs = Job.find(params[:id])
    @jobs.destroy
    redirect_to '/monkeys/admin'
  end

  def update
    @jobs = Job.find params[:id]
    @jobs.update_attributes!(params[:jobs])
    redirect_to '/monkeys/admin'
  end

  def edit
    @jobs = Job.find params[:id]
  end

  def more
    @jobs = Job.find(params[:id])
  end

  def admin
   @search_location = params[:location] || session[:location]
   sort = params[:sort] || session[:sort]
    case sort
    when 'deadline'
      ordering,@deadline_header = {:order => :deadline}
    end    
    if params[:sort] != session[:sort]
      session[:sort] = sort
      #redirect_to :sort => sort and return
    end
    if(@search_location != nil && @search_location != "")
      @jobs = Job.find_all_by_province(@search_location)

      
    else @jobs = Job.all(ordering)
    end

  end
  

end

