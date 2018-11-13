class WatsonController < ApplicationController
  
  def conversation
  end

  def discovery
  end

  def natural_language
    @user=User.find(current_user.id)
  end
  
  def nl_category
    @user=User.find(current_user.id)
  end
  
  def nl_category_result
    @user=User.find(current_user.id)
    urlink = params[:natural][:url]
    @formation = params[:natural][:formation].to_i 
    
    natural_language_understanding = IBMWatson::NaturalLanguageUnderstandingV1.new(
      version: "2018-03-16",
      
      iam_apikey: ENV['NATLANG'],
      url: "https://gateway.watsonplatform.net/natural-language-understanding/api"
    )

    case @formation
    when 2 then
      @response = natural_language_understanding.analyze(
        url: urlink,
        features: {categories: {}}
      )
    when 3 then
      @response = natural_language_understanding.analyze(
        html: urlink,
        features: {categories: {}}
      )
    else
      @response = natural_language_understanding.analyze(
        text: urlink,
        features: {categories: {}}
      )
    end
  end
  
  def nl_concept
    @user=User.find(current_user.id)
  end
  
  def nl_concept_result
    @user=User.find(current_user.id)
    urlink = params[:natural][:url]
    limit_num = params[:natural][:limit].to_i
    @formation = params[:natural][:formation].to_i 
    
    natural_language_understanding = IBMWatson::NaturalLanguageUnderstandingV1.new(
      version: "2018-03-16",
      
      iam_apikey: ENV['NATLANG'],
      url: "https://gateway.watsonplatform.net/natural-language-understanding/api"
    )
    case @formation
    when 2 then
      @response = natural_language_understanding.analyze(
        url: urlink,
        features: {concepts: {limit: limit_num}}
      )
    when 3 then
      @response = natural_language_understanding.analyze(
        html: urlink,
        features: {concepts: {limit: limit_num}}
      )
    else
      @response = natural_language_understanding.analyze(
        text: urlink,
        features: {concepts: {limit: limit_num}}
      )
    end
  end
  
  def nl_emotion
    @user=User.find(current_user.id)
  end
  
  def nl_emotion_result
    @user=User.find(current_user.id)
    urlink = params[:natural][:url]
    @formation = params[:natural][:formation].to_i 
    target = params[:natural][:target].split(';')

    natural_language_understanding = IBMWatson::NaturalLanguageUnderstandingV1.new(
      version: "2018-03-16",
      
      iam_apikey: ENV['NATLANG'],
      url: "https://gateway.watsonplatform.net/natural-language-understanding/api"
    )
    case @formation
    when 2 then
      @response = natural_language_understanding.analyze(
        url: urlink,
        features: {emotion: {targets: target}}
      )

    when 3 then
      @response = natural_language_understanding.analyze(
        html: urlink,
        features: {emotion: {targets: target}}
      )
    else
      @response = natural_language_understanding.analyze(
        text: urlink,
        features: {emotion: {targets: target}}
      )
    end
  end
  
  def nl_entity
    @user=User.find(current_user.id)
  end
  
  def nl_entity_result
    @user=User.find(current_user.id)
    urlink = params[:natural][:url]
    @formation = params[:natural][:formation].to_i 
    limit_num = params[:natural][:limit].to_i
    mentions = params[:natural][:mentions].to_i
    mentions_val=false
    if mentions==1
      mentions_val=true
    end
    model_val = params[:natural][:model]
    sentiment = params[:natural][:sentiment].to_i
    sentiment_val=false
    if sentiment==1
      sentiment_val=true
    end
    emotion = params[:natural][:emotion].to_i
    emotion_val=false
    if emotion==1
      emotion_val=true
    end
    
    natural_language_understanding = IBMWatson::NaturalLanguageUnderstandingV1.new(
      version: "2018-03-16",
      
      iam_apikey: ENV['NATLANG'],
      url: "https://gateway.watsonplatform.net/natural-language-understanding/api"
    )
    
    case @formation
    when 2 then
      @response = natural_language_understanding.analyze(
        url: urlink,
        features: {entities: {limit: limit_num, mentions: mentions_val, model: model_val, sentiment: sentiment_val, emotion: emotion_val}}
      )
    when 3 then
      @response = natural_language_understanding.analyze(
        html: urlink,
        features: {entities: {limit: limit_num, mentions: mentions_val, model: model_val, sentiment: sentiment_val, emotion: emotion_val}}
      )
    else
      @response = natural_language_understanding.analyze(
        text: urlink,
        features: {entities: {limit: limit_num, mentions: mentions_val, model: model_val, sentiment: sentiment_val, emotion: emotion_val}}
      )
    end
  end
  
  def nl_keyword
    @user=User.find(current_user.id)    
  end
  
  def nl_keyword_result
    @user=User.find(current_user.id)
    urlink = params[:natural][:url]
    @formation = params[:natural][:formation].to_i 
    limit_num = params[:natural][:limit].to_i
    sentiment = params[:natural][:sentiment].to_i
    sentiment_val=false
    if sentiment==1
      sentiment_val=true
    end
    emotion = params[:natural][:emotion].to_i
    emotion_val=false
    if emotion==1
      emotion_val=true
    end
    
    natural_language_understanding = IBMWatson::NaturalLanguageUnderstandingV1.new(
      version: "2018-03-16",
      
      iam_apikey: ENV['NATLANG'],
      url: "https://gateway.watsonplatform.net/natural-language-understanding/api"
    )
    
    case @formation
    when 2 then
      @response = natural_language_understanding.analyze(
        url: urlink,
        features: {keywords: {limit: limit_num, sentiment: sentiment_val, emotion: emotion_val}}
      )
    when 3 then
      @response = natural_language_understanding.analyze(
        html: urlink,
        features: {keywords: {limit: limit_num, sentiment: sentiment_val, emotion: emotion_val}}
      )
    else
      @response = natural_language_understanding.analyze(
        text: urlink,
        features: {keywords: {limit: limit_num, sentiment: sentiment_val, emotion: emotion_val}}
      )
    end
    
  end

  def nl_metadata
    @user=User.find(current_user.id)    
  end
  
  def nl_metadata_result
    @user=User.find(current_user.id)
    urlink = params[:natural][:url]
    @formation = params[:natural][:formation].to_i 

    natural_language_understanding = IBMWatson::NaturalLanguageUnderstandingV1.new(
      version: "2018-03-16",
      
      iam_apikey: ENV['NATLANG'],
      url: "https://gateway.watsonplatform.net/natural-language-understanding/api"
    )
    
    case @formation
    when 2 then
      @response = natural_language_understanding.analyze(
        url: urlink,
        features: {metadata: {}}
      )
    when 3 then
      @response = natural_language_understanding.analyze(
        html: urlink,
        features: {metadata: {}}
      )
    else
      @response = natural_language_understanding.analyze(
        text: urlink,
        features: {metadata: {}}
      )
    end
  end
  
  def speech_to_text
  end
end
