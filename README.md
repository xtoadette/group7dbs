CAB Project 7\
Stephanie Contino, Srujana Endreddy, Ayesha Chaudry, Geethika Manojkumar\
\
INITIALIZING THE DATABASE\
(as outlined in DDLSetup)
1) Clone the repository or download it and paste it into a new folder for the project.  CD into the repo.
2) In terminal, run ```createdb proj7```
3) Next, run ```psql proj7```.  This enters the proj7 database.
4) In this database, run ```\i DDLSetup.sql```.  This creates the tables and populates them.
5) Next, exit the postgres database using ```\q```.
6) Run ```EXPORT FLASK_APP=app.py```, then ```flask run```.
7) A link to navigate to the website will then appear.  The web server can be closed with CTRL + C once the user is finished.
