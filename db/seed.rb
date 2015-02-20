require 'active_record'
require_relative './student.rb'

ActiveRecord::Base.establish_connection({
  database: 'student_tracker_app',
  adapter: 'postgresql'
})

Student.destroy_all

names = ['Robert Cunningham','Sara Morais','Eric Kwong','Shomit Naik','Andrew Carton','Mark Hagopian','Simmy Pappachen','John Sanders','Ryan Matuszewski','Alexander Huang','Michael Trumpf','Peter Livadas','Joseph Leindorf','Nya Yeanafehn','Jonathan Eng','Nicholas Butterworth','Will Barbee','Eric Vince','James Lewis','Mark Smukler','Zohra Asrar','Matthew Seaman','Eric Doyle','Aaron Cordova','Owen Rapaport','Frank Juan','Emily Lordahl','James White','Chris Kim','Adam Gallinat']
handles = %w(RobertPTC saramorais EricKwong Shosho85 iiVi mhagopian sspnyc sandersjohnr ryanmat CHANGEME miketrumpf pjlvadas lionsdwarf Nyeanafehn jon-eng nbutter wbarbee mr-eaze lewisj4 codemanimal zasrar MSeaman XenoEmblems qodesmith ossrapaport conceptive emilylordahl jamesfacts chriskimm1 adamgallinat)

names.each_with_index { |name, idx| Student.create(name: name, github_handle: handles[idx]) }