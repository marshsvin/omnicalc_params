class CalculationsController < ApplicationController

def flexible_square
# params = {"num"=>"6"}
@the_number = params["num"].to_f
render("calculations/flexible_square.html.erb")

end

def flexible_sqrt
@the_sq_number = params["sqrt_num"].to_f
render("calculations/flexible_sqrt.html.erb")
end

def pmt
@pv = params["present_value"].to_f
@num_yrs = params["number_of_years"].to_f
@rate = params["basis_points"].to_f/100
@pmt = @rate/1200*@pv/(1-(1+@rate/1200)**(-1*@num_yrs*12))
render("calculations/pmt.html.erb")
end

def square_form

render("calculations/square_form.html.erb")
end

def square_it
@square_num = params[:user_number].to_f
render("calculations/square_it.html.erb")
end

def randoms
@num_high = params[:max].to_f
@num_low = params[:min].to_f
@random_output = rand(params[:max].to_f-params[:min].to_f)+params[:min].to_f
render("calculations/randoms.html.erb")
end

def square_root_form
render("calculations/square_root_form.html.erb")
end

def square_root_it
@square_root_num = params[:user_number2].to_f
render("calculations/square_root_it.html.erb")
end


def payment_form
render("calculations/payment_form.html.erb")
end

def payment_it
@principal = params[:principal].to_f
@apr = params[:apr].to_f
@no_years = params[:no_years].to_f
@payment = @apr/1200*@principal/(1-(1+@apr/1200)**(-1*@no_years*12))
render("calculations/payment_it.html.erb")
end

def random_form
render("calculations/random_form.html.erb")
end

def random_it
@min_num = params[:min_num].to_f
@max_num = params[:max_num].to_f
@random_it = rand(@max_num-@min_num)+@min_num
@url = "/random/results?min_num="+@min_num.to_s+"&max_num="+@max_num.to_s
render("calculations/random_it.html.erb")
end


end
