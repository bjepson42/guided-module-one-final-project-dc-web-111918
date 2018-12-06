class Cli
  attr_accessor :area_input, :area, :eventtype_input, :eventtype, :availabletime_input,
  :availabletime, :selectedevent,:time, :museum, :events, :event_list, :selectoption, :nextoption

  @@all = []

  def self.all
    @@all
  end

  def welcome
      puts "Welcome to the DC Event Locator."
  end

  def area_prompt
    puts "Please choose an area from the following option for event listings:"
    puts "1. Mall North"
    puts "2. Mall South"
    puts "3. Capitol Hill"
    puts "4. Chinatown"
    puts "5. Foggy Bottom"
      self.area_input = STDIN.gets.strip
  end

  def area_selection
    case self.area_input
    when "1"
      puts "You've selected MALL NORTH"
      self.area = Neighborhood.find_by(name: "Mall North")
    when "2"
      puts "You've selected MALL SOUTH"
      self.area = Neighborhood.find_by(name: "Mall South")
    when "3"
      puts "You've selected CAPITOL HILL"
      self.area = Neighborhood.find_by(name: "Capitol Hill")
    when "4"
      puts "You've selected CHINATOWN"
      self.area = Neighborhood.find_by(name: "Chinatown")
    when "5"
      puts "You've selected FOGGY BOTTOM"
      self.area = Neighborhood.find_by(name: "Foggy Bottom")
    else
      puts "Invalid option"
      self.area_prompt
    end
  end


  def eventtype_prompt
    puts "What kind of event are you interested in today?"
    puts "Please select from:"
    puts "1. Museum"
    puts "2. Lecture"
    puts "3. Concert"
    puts "4. Special Exhibition"
      self.eventtype_input = STDIN.gets.strip
    # if self.eventtype == 1
    #   puts "You've selected "
  end

  def eventtype_selection
    case self.eventtype_input
    when "1"
      puts "You've selected MUSEUM"
      self.eventtype = "Museum"
    when "2"
      puts "You've selected LECTURE"
      self.eventtype = "Lecture"
    when "3"
      puts "You've selected CONCERT"
      self.eventtype = "Concert"
    when "4"
      puts "You've selected SPECIAL EXHIBITION"
      self.eventtype = "Special Exhibition"
    else
      puts "Invalid selection."
      self.eventtype_prompt
    end
  end

  def availabletime_prompt
    puts "How much time do you have?" #### if we have time make it deal with hours/minutes. break it down?
    puts "1. 30 Minutes"
    puts "2. 1 hour"
    puts "3. 2 hours"
    puts "4. More than 2 hours"
      self.availabletime = STDIN.gets.strip
  end

  def availabletime_selection
    case self.availabletime
    when "1"
      puts "You've selected 30 minutes"
      self.availabletime = 30
    when "2"
      puts "You've selected 1 hour"
      self.availabletime = 60
    when "3"
      puts "You've selected 2 hours"
      self.availabletime = 120
    when "4"
      puts "More than 2 hours"
      self.availabletime = 121
    else
      puts "Invalid option"
      self.availabletime_prompt
    end
  end

  # def events_picker
  #   self.event_list = []
  #   d = DateTime.now
  #   #d = d.strftime("%d/%m/%Y %H:%M")  ###implement me when we start using dates and not just times
  #   date_now = d.strftime("%H:%M").tr(':','.date')
  #   if Event.where(eventtype: eventtype, neighborhood_id: area.id) == []
  #     "Sorry, there are no events matching your criteria, please search."
  #     Cli.new.call
  #   else
  #     Event.where(eventtype: eventtype, neighborhood_id: area.id).select do |evnt|
  #       date_now = date_now.split(':')[0].to_i + (date_now.split(':')[1].to_i * 1.0)/60 ###########time is hard to add. . .convert to integer
  #       date_open = evnt.date_time.strftime("%H:%M").split(':')[0].to_i + (evnt.date_time.strftime("%H:%M").split(':')[1].to_i * 1.0)/60
  #       date_close = (evnt.duration * 1.0)/60 + date_open
  #       if eventtype == "Special Event" #make sure you can see 30 min
  #         binding.pry
  #         if (date_now > date_open) && (date_now < date_close - 0.5)
  #           binding.pry
  #           self.event_list << evnt
  #           binding.pry
  #         end
  #       elsif eventtype == "Lecture" || "Concert"  #make sure you can see the entire thing and have time to get there
  #         binding.pry  ###########craps out here
  #         if (date_now > date_open - 0.5 ) && (date_now < date_close - 0.5)
  #           binding.pry
  #           self.event_list << evnt
  #           binding.pry
  #         end
  #       elsif #eventtype == "Museum"  #just fit in the duration
  #         binding.pry
  #         if (date_now > date_open) && (date_now < date_close - 0.5)
  #           binding.pry
  #           self.event_list << evnt
  #           binding.pry
  #         end
  #       else
  #         binding.pry
  #       end
  #     end
  #   end
  # end



  def listevents_prompt
    binding.pry
    puts "Please select the event you're interested in to see more details."
      #940 lecture at the blah
    puts "1. #{ self.event_list[0].name} - #{self.event_list[0].name.strftime("%d/%m/%Y %H:%M")} #{ self.event_list[0].eventtype} at the #{Museum.find_by(id: self.event_list[0].museum_id).name}"
    puts "2. #{ self.event_list[1].name} - #{self.event_list[1].name.strftime("%d/%m/%Y %H:%M")} #{ self.event_list[1].eventtype} at the #{Museum.find_by(id: self.event_list[1].museum_id).name}"
    puts "3. #{ self.event_list[2].name} - #{self.event_list[2].name.strftime("%d/%m/%Y %H:%M")} #{ self.event_list[2].eventtype} at the #{Museum.find_by(id: self.event_list[2].museum_id).name}"
      self.selectedevent = STDIN.gets.strip
  end

  def listevents_selection
    # event = self.eventlist[self.selectedevent-1]
    event = Event.find_by(id: 1)
    time = event.date_time
    puts "#{event.name.upcase} at the #{event.museum.name.upcase}"
    puts "Date: #{time.strftime('%A')}, #{time.strftime('%B')} #{time.strftime('%d')}, #{time.year}"
    puts "Time:"
    puts "Duration: #{event.duration} minutes"
    puts "Details: #{event.description}"

    puts "1. Go back to list"
    puts "2. New Search"
    puts "3. Exit"
    self.nextoption = STDIN.gets.strip
  end

  def nextoption_selection
    case self.nextoption
    when "1"
      self.listevents_prompt
    when "2"
      self.area_prompt
    when "3"
      self.quit
    else
      puts "Invalid option"
      self.eventdetails_prompt
    end
  end

  def quit
    puts "Thank you for using the DC Event Locator come again!"
  end

   def call
    # self.welcome
    # self.area_prompt
    # self.area_selection
    # # puts self.area
    # # puts "session area is:  #{self.area}""
    # self.eventtype_prompt
    # self.eventtype_selection
    # puts "session prompt is : #{self.eventtype}"
    # self.availabletime_prompt
    # self.availabletime_selection
    # self.events_picker ###############################
    # self.listevents_prompt
    self.listevents_selection
    # self.eventdetails_prompt
    # self.eventdetails_selection
   end

end
