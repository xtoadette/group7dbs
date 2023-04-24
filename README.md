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
\
Main Page
<img width="1274" alt="image" src="https://user-images.githubusercontent.com/64750896/234132553-fc6eeb98-ebb7-4002-ae36-e5e7ae5766e4.png">

County Page
<img width="1277" alt="image" src="https://user-images.githubusercontent.com/64750896/234132661-7d2bf47f-60c0-494c-a516-2af66cd3c87a.png">

Research Display
<img width="1279" alt="image" src="https://user-images.githubusercontent.com/64750896/234132717-39caba97-4123-4bab-94d1-308925f17823.png">
