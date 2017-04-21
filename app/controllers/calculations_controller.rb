class CalculationsController < ApplicationController
  def landing
    #params={"zebra"=>6}

    render("calculations/landing.html.erb")
  end

  def flexible_square
    #params={"zebra"=>6}
    @the_number=params["zebra"].to_f
    render("calculations/flexible_square.html.erb")
  end

  def flexible_squareroot
    #params={"zebra"=>6}
    @the_number=params["lion"].to_f
    render("calculations/flexible_squareroot.html.erb")
  end

  def flexible_payment
    #params={"zebra"=>6}
    @the_interest=params["interest"].to_f
    monthly=@the_interest/(10000*12)
    @the_period=params["year"].to_f
    monthly_period=@the_period*12
    @the_principal=params["principal"].to_f
    @the_payment=(monthly*@the_principal)/(1-(1+monthly)**(-monthly_period))
    render("calculations/flexible_payment.html.erb")
  end

  def flexible_random
    #params={"zebra"=>6}
    @the_first=params["first"].to_f

    @the_second=params["second"].to_f

    @the_random=rand(@the_first...@the_second)

    render("calculations/flexible_random.html.erb")
  end

  def square_form
      render("calculations/square_form.html.erb")
  end

  def square_form_calc
      @the_input=params["usr_num"].to_f
      @the_square=@the_input**2
      render("calculations/square_form_calc.html.erb")
  end
  def square_root_form
      render("calculations/square_root_form.html.erb")
  end

  def square_root_form_calc
      @the_input=params["usr_num"].to_f
      @the_squareroot=@the_input**(0.5)
      render("calculations/square_root_form_calc.html.erb")
  end

  def payment_form
      render("calculations/payment_form.html.erb")
  end

  def payment_form_calc
    @the_interest=params["usr_apr"].to_f
    monthly=@the_interest/(100*12)
    @the_period=params["usr_year"].to_f
    monthly_period=@the_period*12
    @the_principal=params["usr_prin"].to_f
    @the_payment=(monthly*@the_principal)/(1-(1+monthly)**(-monthly_period))

      render("calculations/payment_form_calc.html.erb")
  end
  def random_form
      render("calculations/random_form.html.erb")
  end
  def random_results_form
    @the_first=params["usr_min"].to_f

    @the_second=params["usr_max"].to_f
    randomnum=rand(@the_first...@the_second)
    @the_random=randomnum
      render("calculations/random_results_form.html.erb")
  end
end
