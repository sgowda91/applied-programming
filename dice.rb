require "sinatra"
require "sinatra/reloader"
def view(template); erb template.to_sym; end
before { puts "Parameters: #{params}" }  


get "/" do
    #   @die_1 = rand(1..6)
    #   @die_2 = rand(1..6)
    #   @die_3 = rand(1..6)
    #   @die_4 = rand(1..6)     
    #   @die_5 = rand(1..6)
      @dice = []
      for die in (0..4)
            die = rand(1..6)
            @dice << die
      end 
    # "<h1>Dice: #{die_1}, #{die_2}</p>"
    view "dice"
end


get "/tacos" do 
    "Tacos are delish!!!"
end