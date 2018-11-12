class WatsonController < ApplicationController
  
  def conversation
  end

  def discovery
  end

  def natural_language
  end
  
  def nl_category
  end
  
  def nl_category_result
    @url = params[:natural][:url]
    @dummy = ENV['IBMNATLANG']
    
    natural_language_understanding = IBMWatson::NaturalLanguageUnderstandingV1.new(
    version: "2018-03-16",
    iam_apikey: ENV['NATLANG'],
    url: "https://gateway.watsonplatform.net/natural-language-understanding/api"
    )

    @response = natural_language_understanding.analyze(
    url: "www.ibm.com",
    features: {categories: {}}
    )
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end

  end
  
  def nl_concept
  end
  
  def nl_concept_result
  end
  
  def speech_to_text
  end
end
