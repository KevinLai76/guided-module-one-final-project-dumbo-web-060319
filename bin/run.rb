require_relative '../config/environment'


chris = User.create

def display_week_one
  puts "Week One"
end



scene_one = Journey.find_by(week_number: "1")


pull = Outcome.all.each do |oc|
 oc.journey_id == scene_one.id
end

# Shows Outcome consequence
def consequence_text(pull)
  puts "#{pull.consequence}"
end

# Executes +/- of
def modify_crew(pull)
  crew = User.find(2).crew_num
  new_crew = crew + pull.crew_modifier
  updated_crew = User.find(2).update(num_of_crew: new_crew)
  puts " You now have #{User.find(2).num_of_crew} crew left."
end




  week_one = TTY::Prompt.new.select("#{scene_one.scenario}") do |menu|
    menu.choice "#{pull[0].choice_prompt}" => -> do
      consequence_text(pull[0])
      modify_crew(pull[0])
    end
    menu.choice "#{pull[1].choice_prompt}" => -> do
      consequence_text(pull[1])
      modify_crew(pull[1])
    end
  end

  week_two = TTY::Prompt.new.select("#{scene_one.scenario}") do |menu|
    menu.choice "#{pull[0].choice_prompt}" => -> do
      consequence_text(pull[0])
      modify_crew(pull[0])
    end
    menu.choice "#{pull[1].choice_prompt}" => -> do
      consequence_text(pull[1])
      modify_crew(pull[1])
    end
  end





# def random_journey_gen
#  rdm_journey = rand(1..Journey.all.count)
# end

binding.pry

puts "Yas"
