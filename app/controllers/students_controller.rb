class StudentsController < ApplicationController
	def index
		@students = Student.all
	end

	def new
		@student = Student.new
	end

	def create
		@student = Student.new(student_params)
		if @student.save
			redirect_to students_path
		else
			render :new, status: :unprocessable_entity
		end
	end

#errors were not displaying without the status: on line 15,
#chatGPT suggested to add 'status: :unprocessable_entity'


def show
	@student = Student.find(params[:id])
end

def edit
	@student = Student.find(params[:id])
end

def update
	@student = Student.find(params[:id])
	if @student.update(student_params)
		redirect_to students_path #redirect to list of all
		#redirect_to student_path(@student) #redirect to edited student
	else
		render :edit
	end
end

def destroy
	@student = Student.find(params[:id])
	@student.destroy
	redirect_to students_path
end

private

	def student_params
		params.require(:student).permit(:first_name, :last_name, :email)
	end

end