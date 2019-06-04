# READMEEEEEE dot markdown xD

![alt text](https://i.imgur.com/cPBt8fl.png "Type 1 Diabetes Image")

## What is it?
- dia-BEAT-IT is an application that allows me to conglomerate data about my blood sugar (I have type 1 diabetes)
- It will allow me to view trends in metadata and make important and quality of life increases in my day to day life by helping me make informed decisions about my insulin (both basal and bolus as well as my 24 hour active insulin shot) rates as well as better my daily carb intake and more inform proper times throughout the day to exercise without major disruptions to my day.
### TL;DR - Application with meta-blood-sugar-data will help me improve quality and efficiency with diabetes management and improve my overall quality of life.

## Why make this?
- I am a type 1 diabetic, meaning that some messed up homogeneous cell protiens that caused an auto-immune response that effects my endocrine horomone regulation systems leaves me to artifically regulate said systems. 
- This has led to my body effectively killing off the beta cells in my pancreas that produce insulin and maintain healthy blood sugars in the normal person.  
- Because I am a student with no income my insurance is not the best, this technology is included with many insulin pumps and analyzation of data is pretty simple, but because I can only afford single shots of insulin whenever I eat anything. I need a way to conglomerate and analyze my diabetes-data, if you will, in order to mor efficeively increase my bloodsugars, health, and overall quality of living. 
- Hopefully I can obtain a software development position soon that will provide me with insurance that is good enough for me to afford an insulin pump, but for the time being this is my best option at efficiently and efficetively maintaining my diabetes and personal health. 
### TL;DR - Because student and am poor I cannot afford conglomeration of diabetes-meta-data through insulin pump (been fighting insurance for months on months to get one), have to make app myself to improve quality of life until I get junior dev job with bomb health insurance gg. 

## Technologies Used:
- [ruby 2.6.1p33](https://www.ruby-lang.org/en/downloads/)
- [Rails 5.2.3](https://www.tutorialspoint.com/ruby-on-rails/rails-installation.htm)
- [PostgreSQL 11](https://www.postgresql.org/download/)
- ```gem active_model_serializers``` (for sendin data over http in STRAAANNGGSS)
- ```gem 'pg', '>= 0.18', '< 2.0'``` (version of postgreSQL used in this project, add both these to your gemfile)

## Setup 
- Need to make sure that the PostgreSQL application is installed and running and then database commands:
    - ```rails db:create```
    - ```rails db:migrate```
    - ```rails db:seed``` (for some dummy data. if you want to make your own records the schema for each sql table is located inside of ```./db/schema.rb```)
- Inside of your terminal ```rails s``` will start a local development server located at ```localhost:300```. 


### Configuration
* more to come here about changing the database from development/test to deployment or something, not sure yet D:


