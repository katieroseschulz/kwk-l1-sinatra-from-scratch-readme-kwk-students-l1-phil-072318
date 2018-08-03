class MyApp < Sinatra::Base
 
  get '/' do
    erb:home
  end
  
  get '/test' do
  	"this is a test"
  end
  
  get '/test1' do
  	erb:index
  end
  

    
  post '/quizresults' do
    answers = params.values
    @value= 0 #at the beginning of the quiz
   answers.each do |answer| #goes to the array of values
     @value += answer.to_i #adds up numbers that user chose -- also` convert to integer bc we're taking in numbers
   end
    
    if @value <= 15
    #"You are a visual learner!"
      erb:visual
    
    elsif @value <= 20
    #"You are an auditory learner!"
      erb:auditory
      
    elsif @value <=30
    #"You are a kinesthetic learner!"
      erb:kinesthetic
    end
  end

  get '/quiz'do
  	erb:QUIZ
  end
  
  get '/health'do
    erb:health
  end
  
  get '/inspo'do
    erb:inspo
  end
  
  get '/home'do
    erb:home
  end
  
  get '/tips'do
    erb:tips
  end
  
  get '/about_us'do
    erb:about_us
  end
  
  get '/deaf'do
    erb:deaf
  end 
 
end