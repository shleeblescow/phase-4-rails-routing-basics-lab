class StudentsController < ApplicationController
   
    def index
        students = Student.all
        render json: students
    end

    def grades
        ranked_students = Student.order(grade: :desc)
        render json: ranked_students
    end

    def highest_grade
        best_student = Student.order(grade: :desc).first
        render json: best_student
    end
    
end
