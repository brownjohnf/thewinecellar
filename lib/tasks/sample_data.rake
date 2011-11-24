namespace :db do
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    make_colors
    make_grapes
    make_regions
    make_countries
    make_users
    make_producers
    make_offerings
    make_formats
    make_compositions
    make_cellars
    make_bottles
  end
end

def make_colors
  Color.create!(:name => 'Red')
  Color.create!(:name => 'White')
  Color.create!(:name => 'Rose')
end

def make_grapes
  Grape.create!(:common_name => 'Cabernet Sauvignon', :color_id => 1)
  Grape.create!(:common_name => 'Malbec', :color_id => 1)
  Grape.create!(:common_name => 'Champagne', :color_id => 2)
  Grape.create!(:common_name => 'Sauvignon Blanc', :color_id => 2)
  Grape.create!(:common_name => 'Merlot', :color_id => 1)
  Grape.create!(:common_name => 'Unknown')
end

def make_countries
  Country.create!(:name => 'France', :local_name => 'France')
  Country.create!(:name => 'America', :local_name => 'America')
  Country.create!(:name => 'Argentina', :local_name => 'Argentina')
  Country.create!(:name => 'Spain', :local_name => 'Espagne')
  Country.create!(:name => 'Australia', :local_name => 'Australia')
end

def make_regions
  Region.create!(:name => 'Washington State', :country_id => 2)
  Region.create!(:name => 'California', :country_id => 2)
  Region.create!(:name => 'Bordeaux', :country_id => 1)
  Region.create!(:name => 'Bergundy', :country_id =>1)
  Region.create!(:name => 'La Mancha', :country_id => 4)
end

def make_users
  User.create!(:name => 'Jack Brown', :email => 'jack@brownjohnf.com', :bio => 'Fun-loving guy.', :phone => 773304831, :password => 'testing', :password_confirmation => 'testing')
  User.create!(:name => 'Cindy Brown', :email => 'cindyappelbrown@gmail.com', :bio => "Jack's Mom.", :phone => 15098997120, :password => 'testing', :password_confirmation => 'testing')
  User.create!(:name => 'Emily Schauer', :email => 'emily.schauer@gmail.com', :bio => 'From Kaffrine', :phone => 776730070, :password => 'testing', :password_confirmation => 'testing')
  user = User.find_by_email('jack@brownjohnf.com')
  user.password = 'testing'
  user.toggle!(:admin)
end

def make_producers
  Producer.create!(:name => 'Columbia Crest', :region_id => 1)
  Producer.create!(:name => 'Chateau Moulin de Beausejour', :region_id => 1)
end

def make_offerings
  Offering.create!(:name => 'Two Vines Merlot-Cabernet', :producer_id => 1, :color_id => 1, :description => 'Columbia Crest Merlot Cabernet is a delicious, fruit-forward wine with a rich, silky finish. Generous blackberry and raspberry flavors are wrapped around a core of warm vanilla from extended aging in small oak barrels.')
  Offering.create!(:name => 'Bordeaux Superieur', :producer_id => 2, :color_id => 1, :description => 'Its name comes from the old windmill surveying the pretty vineyard near the Dordogne river. This wine is all fruit and roundness. Best enjoyed around 64 deg F.')
end

def make_formats
  Format.create!(:name => 'Standard', :volume => 750)
  Format.create!(:name => 'Magnum', :volume => 1500)
end

def make_compositions
  Composition.create!(:offering_id => 1, :grape_id => 1)
  Composition.create!(:offering_id => 1, :grape_id => 5)
  Composition.create!(:offering_id => 2, :grape_id => 6)
end

def make_cellars
  Cellar.create!(:name => 'Brown Family House', :location => 'Cle Elum, WA', :private => false)
  Cellar.create!(:name => "Jack's Apartment", :location => 'Dakar, Senegal', :private => false)
  Cellar.create!(:name => "Emily's Room", :location => 'Kaffrine, Senegal', :private => true)
end

def make_bottles
  Bottle.create!(:cellar_id => 1, :offering_id => 1, :year => 2007, :number => 1, :format_id => 2)
  Bottle.create!(:cellar_id => 1, :offering_id => 2, :year => 2010, :number => 1, :format_id => 1)
end
