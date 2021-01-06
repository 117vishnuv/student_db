# Student DB

A simple application serving as a database of students using Rails & Bootstrap. (In WIP stage).

## The purpose of this project

- To understand the way a coder approaches the problem. 
- It will assess the candidates's technical knowledge of language and frameworks.
- How the person organize the code.
- How keen the person is in following standard coding guidelines/principles.
- Ability of the person to understand a given problem to arrive at an optimal solution. 
- How keen the person is about the the performance of the system. 
- How keen the person is about overall look and feel of the system.

## Setup

 Setup ruby & bundler if you haven't already. 
 
 After that run following from project directory

`bundle`

`rake db:create`

`rake db:setup`

## General guidelines

* Follow programming/rails best practices
* Follow ruby/rails style guidelines
* You are free to use necessary gems
* Write readable maintainable code
* Code/Queries should be optimised for performance
* Add/Modify db seeds based on any addtion/change in models

## User stories

* S1 - user creation from backend for now, only admin roles for now, more role may come
* S2 - anyone can access a path '/register' and add a student detail by entering name, address, mobile and choose the institution student belongs to
* S3 - admin user can signin and access all the parts of app
* S4 - student will belong to an institution and a country
* S5 - admin can add institutions
* S5 - insitution will belong to a country
* S6 - admin user can login to access the student list
* S7 - admin user can add students
* S8 - admin user will have list of all students at home page
* S9 - admin user can approve a registered student (S2) or reject it.
* admin user should be able to search students from home page with:
    - S10 - student name text box
    - S11 - institution name text box
    - S12 - country of student from drop down
    - This search should work in combination, ie, if student name: 'ism' country: India, result should have both queries met.
* Credential system:
    - S13 A system will have preloaded (and extendable from backend for now) credential types, Ex: Higher Secondary, 3 Year Diploma, 3 or More Year Graduation, 2 or  more Year Post Graduation etc
    - S14 A student while registering can choose and add one or more credentials to his profile.
    - S15 Admins will have a credentials search page, where they can choose one or more credentials and all students which have all chosen credentials are listed
* S16 - Send an email to student asynchronously (Delayed Job, Resque etc) upon approval or reject.
* S17 - cleanup application UI designs using Bootstrap. Change/Add UX wherever applicable (use your creativity)
