Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get("/",{:controller => "calculations", :action => "landing"})
    get("/flexible/square/:zebra",{:controller => "calculations", :action => "flexible_square"})
    get("/flexible/squareroot/:lion",{:controller => "calculations", :action => "flexible_squareroot"})
    get("/flexible/payment/:interest/:year/:principal",{:controller => "calculations", :action => "flexible_payment"})
    get("/flexible/random/:first/:second",{:controller => "calculations", :action => "flexible_random"})

    get("/square/new",{:controller => "calculations", :action => "square_form"})
    get("/square/results",{:controller => "calculations", :action => "square_form_calc"})
end
