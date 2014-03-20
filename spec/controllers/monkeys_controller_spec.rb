require 'spec_helper'

describe MonkeysController  do

<<<<<<< HEAD
def mock_job(stubs={})
    @mock_job ||= mock_model(Job, stubs).as_null_object
  end

  describe 'create a new job' do

=======
     describe 'add a new job' do
>>>>>>> 645b7dd73df2dbf15eb078345caa3d168f8cb400
        it 'should render the new template' do
         	get :new
	        response.should render_template 'new'
	end 
<<<<<<< HEAD
        it 'should call a model method to persist data' do
                job = stub('new job').as_null_object
		Job.should_receive(:create).and_return(job)
                post :create, {:company_name => "samat"}      
        end
    

	it 'should render index template' do
                job = stub('new job').as_null_object
                Job.stub(:create).and_return(job)
                post :create, {:company_name => "samat"}
		response.should redirect_to(monkeys_path)
        end
       
   describe "search job by province" do 
        it "with fill out search form by province" do
        job = [mock('job1'),mock('job2')]
        Job.stub(:index).with(:location => "Bangkok").and_return(job)
        get :index , :location => "Bangkok"
       end
      end

  end

  describe 'Job sort' do
=======
        it 'should add job ' do
		Job.should_receive(:create).with(:samart).and_return(:samart)
                Job.create(:samart) 
                post :new, {:create => 'samart'}       
        end
	it 'should render index template' do
                if Job.stub(:create).with(:samart)
                #get :index, :format => "html"
                post :index, {:job => 'samart'}
                response.should render_template(:index)
                else
                response.should render_template(:error)
                end
        end
    end

    describe Job do
>>>>>>> 645b7dd73df2dbf15eb078345caa3d168f8cb400
     
        it 'should render the index template' do
         	get :index
	        response.should render_template 'index'
	end 
        it 'should be sorted incrementally' do
<<<<<<< HEAD
                first = Job.create(company_name: 'Samart Corporation',province: 'Bangkok',position: 'Programmer',numb:      '5',qualification: 'Bachelor of Engineering', deadline: '2014-02-17',link: 'www.samartcorp.com')
                second =  Job.create(company_name: 'Samart',province: 'Bangkok',position: 'network',numb:'3',qualification: 'Bachelor of Engineering', deadline: '2014-02-20',link: 'www.google.com')
                expect(Job.all).to eq [first, second]       
=======
                first = Job.create(company_name: 'Samart Corporation',province: 'Bangkok',position: 'Programmer',numb: '5',qualification: 'Bachelor of Engineering', deadline: '2014-02-17',link: 'www.samartcorp.com')
                second =  Job.create(company_name: 'Samart',province: 'Bangkok',position: 'network',numb:'3',qualification: 'Bachelor of Engineering', deadline: '2014-02-20',link: 'www.google.com')
                expect(Job.all).to eq [first, second] 
                #Job.order(:deadline).all eq [@first, @second]       
>>>>>>> 645b7dd73df2dbf15eb078345caa3d168f8cb400
        end
        it 'should render index template' do
                post :index, {:deadline => '2014-02-17'}
                post :index, {:deadline => '2014-02-20'}
                response.should render_template('index')
        end
<<<<<<< HEAD

     end






   describe "DELETE destroy" do

         it 'should render the index template' do
         	get :index
	        response.should render_template 'index'
	end 

         it 'destroys the job post' do
              Job.should_receive(:find).with("2") { mock_job }
              mock_job.should_receive(:destroy)
              delete :destroy, :id => "2"
         end
      end

  describe 'Update a job' do

         it 'should render the index template' do
         	get :index
	        response.should render_template 'index'
	 end 

         it 'should render edit movie template' do
  	        Job.stub(:find)
		get :edit, {:id => 5}
		response.should render_template 'edit'
         end

         it 'updates the job' do
                Job.should_receive(:find).with("5") { mock_job(:update_attributes => true) }
                mock_job.should_receive(:update_attributes!)
                put :update, {:id => "5",:company_name => "samat"}      
         end
       
         it 'should call the model method that performs the movie update' do
			true
	 end
         it 'should redirect to details template for rendering' do
                 get :index
	         response.should render_template 'index'
	 end
     end
  describe 'admin' do
        it 'should render the admin template' do
         	get :admin
	        response.should render_template 'admin'
	end 
  
        it "should search with province" do
          job = [mock('job1'),mock('job2')]
          Job.stub(:index).with(:location => "Bangkok").and_return(job)
          get :admin , :location => "Bangkok"
      
        end

    end
   describe 'more detail' do
          it 'should show all detail with the job' do
          Job.stub(:find)
       	  get :more, {:id => 5}
	  response.should render_template 'more'
   end
   end


=======
        
     end
>>>>>>> 645b7dd73df2dbf15eb078345caa3d168f8cb400
end



