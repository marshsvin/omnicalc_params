Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

get("/flexible/square/:num", {:controller => "calculations", :action => "flexible_square"})

get("/flexible/square_root/:sqrt_num", {:controller => "calculations", :action => "flexible_sqrt"})

get("/flexible/payment/:basis_points/:number_of_years/:present_value", {:controller => "calculations", :action => "pmt"})

get("/flexible/random/:min/:max", {:controller => "calculations", :action => "randoms"})

get("/square/new", {:controller => "calculations", :action => "square_form"})

get("/square/results", {:controller => "calculations", :action => "square_it"})

get("/square_root/new", {:controller => "calculations", :action => "square_root_form"})

get("/square_root/results", {:controller => "calculations", :action => "square_root_it"})

get("/payment/new", {:controller => "calculations", :action => "payment_form"})

get("/payment/results", {:controller => "calculations", :action =>"payment_it"})

get("/random/new", {:controller => "calculations", :action => "random_form"})

get("/random/results", {:controller => "calculations", :action => "random_it"})

get("/", {:controller => "calculations", :action => "landing"})

end
