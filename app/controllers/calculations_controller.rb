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
end
