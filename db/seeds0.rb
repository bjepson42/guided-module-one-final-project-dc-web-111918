Museum.destroy_all
Neighborhood.destroy_all
Event.destroy_all


##neighborhoods

mallnorth = Neighborhood.find_or_create_by(name: "Mall North")
mallsouth = Neighborhood.find_or_create_by(name: "Mall South")
capitolhill = Neighborhood.find_or_create_by(name: "Capitol Hill")
chinatown = Neighborhood.find_or_create_by(name: "Chinatown")
foggybottom = Neighborhood.find_or_create_by(name: "Foggy Bottom")

##museums

airandspacemuseum = Museum.find_or_create_by(name: "Smithsonian Air and Space Museum")
americanartmuseum = Museum.find_or_create_by(name: "Smithsonian American Art Museum")
naturalhistory = Museum.find_or_create_by(name: "Smithsonian National Museum of Natural History")
libraryofcongress = Museum.find_or_create_by(name: "Library of Congress")
americanhistory = Museum.find_or_create_by(name: "Smithsonian National Museum of American History")
newseum = Museum.find_or_create_by(name: "Newseum")
nationalholocaustmuseum = Museum.find_or_create_by(name: "National Holocaust Museum")
kennedycenter = Museum.find_or_create_by(name: "Kennedy Center")

##events
event1 = Event.find_or_create_by(museum: airandspacemuseum, neighborhood: mallsouth, name:"Special Exhibition1", date_time: "2018-12-04 18:00:00", eventtype: "Special Exhibition", duration: "60", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit")
event2 = Event.find_or_create_by(museum: naturalhistory, neighborhood: mallnorth, name:"Special Exhibition2", date_time: "2018-12-04 13:00:00", eventtype: "Special Exhibition", duration: "180", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit")
event3 = Event.find_or_create_by(museum: americanartmuseum, neighborhood: chinatown, name:"Special Exhibition3", date_time: "2018-12-04 18:00:00", eventtype: "Special Exhibition", duration: "60", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit")
event4 = Event.find_or_create_by(museum: kennedycenter, neighborhood: foggybottom, name:"Special Exhibition4", date_time: "2018-12-04 13:00:00", eventtype: "Special Exhibition", duration: "180", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit")
event5 = Event.find_or_create_by(museum: naturalhistory, neighborhood: mallsouth, name:"Air and Space Museum", date_time: "2018-12-04 09:00:00", eventtype: "Museum", duration: "480", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit")
event6 = Event.find_or_create_by(museum: airandspacemuseum, neighborhood: mallsouth, name:"National Gallery", date_time: "2018-12-04 09:00:00", eventtype: "Museum", duration: "480", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit")
event7 = Event.find_or_create_by(museum: americanartmuseum, neighborhood: chinatown, name:"Museum of Natural History", date_time: "2018-12-04 09:00:00", eventtype: "Museum", duration: "480", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit")
event8 = Event.find_or_create_by(museum: kennedycenter, neighborhood: foggybottom, name:"Kennedy Center", date_time: "2018-12-04 11:00:00", eventtype: "Museum", duration: "450", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit")
event9 = Event.find_or_create_by(museum: naturalhistory, neighborhood: mallsouth, name:"Lecture1", date_time: "2018-12-04 14:00:00", eventtype: "Lecture", duration: "60", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit")
event10 = Event.find_or_create_by(museum: airandspacemuseum, neighborhood: mallsouth, name:"Lecture2", date_time: "2018-12-04 15:00:00", eventtype: "Lecture", duration: "90", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit")
event11 = Event.find_or_create_by(museum: americanartmuseum, neighborhood: chinatown, name:"Lecture3", date_time: "2018-12-04 16:00:00", eventtype: "Lecture", duration: "60", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit")
event12 = Event.find_or_create_by(museum: kennedycenter, neighborhood: foggybottom, name:"Lecture4", date_time: "2018-12-04 17:00:00", eventtype: "Lecture", duration: "90", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit")
event13 = Event.find_or_create_by(museum: naturalhistory, neighborhood: mallsouth, name:"Concert1", date_time: "2018-12-04 16:00:00", eventtype: "Lecture", duration: "120", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit")
event14 = Event.find_or_create_by(museum: airandspacemuseum, neighborhood: mallsouth, name:"Concert2", date_time: "2018-12-04 17:00:00", eventtype: "Lecture", duration: "60", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit")
event15 = Event.find_or_create_by(museum: americanartmuseum, neighborhood: chinatown, name:"Concert3", date_time: "2018-12-04 18:00:00", eventtype: "Lecture", duration: "120", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit")
event16 = Event.find_or_create_by(museum: kennedycenter, neighborhood: foggybottom, name:"Concert4", date_time: "2018-12-04 19:00:00", eventtype: "Lecture", duration: "60", description: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit")