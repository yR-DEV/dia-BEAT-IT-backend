
# dia-BEAT-IT - backend

![alt text](https://i.imgur.com/YbyLjA3.png "Landing") 
![alt text](https://i.imgur.com/12WwOgz.png "Records Table")
![alt text](https://i.imgur.com/0P0ZByt.png "Mapped Records")
- FRONTEND: https://github.com/yR-DEV/dia-BEAT-IT-frontend

## What is it and why the bad pun on Diabetes??
- **dia-BEAT-IT** is an application that allows me to conglomerate data about my blood sugar (I have type 1 diabetes)
- It will allow me to view trends in metadata and make important and quality of life increases in my day to day life by helping me make informed decisions about my insulin (both basal and bolus as well as my 24 hour active insulin shot) rates as well as better my daily carb intake and more inform proper times throughout the day to exercise without major disruptions to my day.
### **TL;DR** - See trends in bloodsugars, recognize habits/trends, adjust and improve diabetes strategy, management, and hopefully overall health.

## Why make this?
- I am a type 1 diabetic, meaning that some malfunctioning homogeneous cell protiens caused an auto-immune response that effects my endocrine horomone regulation systems and leaves me to artifically regulate it myself. 
- This has led to my body effectively killing off the beta cells in my pancreas whose responsibility is to produce insulin and maintain healthy blood sugar levels in the normal person.  
- Because I am a student at the moment with no income, my insurance is not the best. This technology is included with many insulin pumps and analyzation of data is pretty simple, but because I can only afford single shots of insulin whenever I eat anything. I need a way to conglomerate and analyze my diabetes-data, if you will, in order to mor efficeively increase my bloodsugars, health, and overall quality of living. 
- Hopefully I can obtain a software development position soon that will provide me with insurance that is good enough for me to afford an insulin pump, but for the time being this is my best option at efficiently and efficetively maintaining my diabetes and personal health. 

### **TL;DR** - Lack of proper health insurance leaves me with a problem I had that was solved through software

# Technologies Used:
- [ruby 2.6.1p33](https://www.ruby-lang.org/en/downloads/)
- [Rails 5.2.3](https://www.tutorialspoint.com/ruby-on-rails/rails-installation.htm)
- [PostgreSQL 11](https://www.postgresql.org/download/)
- `gem active_model_serializers` (for sendin data over http in STRAAANNGGSS, add to Gemfile)
- `gem 'pg', '>= 0.18', '< 2.0'` (version of postgreSQL used in this project, add to Gemfile)
- `gem 'bcrypt', '~> 3.1.7'` (uncommented in gemfile resulting from create-react-app)
- `gem 'jwt` (json web token for stateless auth!)
- `gem 'simple_command` (helps connection between model and controller instead of model/controller and view)

# Setup 
- `bundle install`
- Need to make sure that the PostgreSQL application is installed and running and then database commands:
    - `rails db:create`
    - `rails db:migrate`
    - `rails db:seed` (for some dummy data. if you want to make your own records the schema for each sql table is located inside of `./db/schema.rb`)
- Inside of your terminal `rails s` will start a local development server located at `localhost:3000`.
- Access rails console and use ActiveRecord methods to interact with PG using `rails console` 


# Configuration
* more to come here about changing the database from development/test to deployment or something, not sure yet D:


