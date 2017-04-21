Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get("/",{:controller => "calculations", :action => "landing"})
    get("/flexible/square/:zebra",{:controller => "calculations", :action => "flexible_square"})
    get("/flexible/square_root/:lion",{:controller => "calculations", :action => "flexible_squareroot"})
    get("/flexible/payment/:interest/:year/:principal",{:controller => "calculations", :action => "flexible_payment"})
    get("/flexible/random/:first/:second",{:controller => "calculations", :action => "flexible_random"})

    get("/square/new",{:controller => "calculations", :action => "square_form"})
    get("/square/results",{:controller => "calculations", :action => "square_form_calc"})

    get("/square_root/new",{:controller => "calculations", :action => "square_root_form"})
    get("/square_root/results",{:controller => "calculations", :action => "square_root_form_calc"})

    get("/payment/new",{:controller => "calculations", :action => "payment_form"})
    get("/payment/results",{:controller => "calculations", :action => "payment_form_calc"})

    get("/random/new",{:controller => "calculations", :action => "random_form"})

    get("/random/results",{:controller => "calculations", :action => "random_results_form"})
end
