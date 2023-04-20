import psycopg2
from config import config
from flask import Flask, render_template, request, url_for, redirect


# Connect to the PostgreSQL database server
def connect(query):
    global rows
    conn = None
    try:
        # read connection parameters
        params = config()

        # connect to the PostgreSQL server
        print('Connecting to the %s database...' % (params['database']))
        conn = psycopg2.connect(**params)
        print('Connected.')

        # create a cursor
        cur = conn.cursor()

        # execute a query using fetchall()
        cur.execute(query)
        rows = cur.fetchall()

        # close the communication with the PostgreSQL
        cur.close()
    except (Exception, psycopg2.DatabaseError) as error:
        print(error)
    finally:
        if conn is not None:
            conn.close()
            print('Database connection closed.')
    # return the query result from fetchall()
    return rows


# app.py
app = Flask(__name__)


# serve form web page
@app.route("/")
def index():
    return render_template('index.html')

#create emissions data for all counties (map feature)
@app.route('/sussex/', methods=['GET', 'POST'])
def sussex():
    rows = connect("SELECT mname, county, year, passenger_cars, total, total_electricity,"
                   "total_natural_gas FROM map WHERE county ='Sussex';")
    heads = ['Municipality', 'County', 'Year', 'Car Emissions', 'Total Emissions',
             'Electricity Emissions', 'Natural Gas Emissions']
    return render_template('sussex.html', rows=rows, heads=heads)

@app.route('/passaic/', methods=['GET', 'POST'])
def passaic():
    rows = connect("SELECT mname, county, year, passenger_cars, total, total_electricity,"
                   "total_natural_gas FROM map WHERE county ='Passaic';")
    heads = ['Municipality', 'County', 'Year', 'Car Emissions', 'Total Emissions',
             'Electricity Emissions', 'Natural Gas Emissions']
    return render_template('passaic.html', rows=rows, heads=heads)

@app.route('/bergen/', methods=['GET', 'POST'])
def bergen():
    rows = connect("SELECT mname, county, year, passenger_cars, total, total_electricity,"
                   "total_natural_gas FROM map WHERE county ='Bergen';")
    heads = ['Municipality', 'County', 'Year', 'Car Emissions', 'Total Emissions',
             'Electricity Emissions', 'Natural Gas Emissions']
    return render_template('bergen.html', rows=rows, heads=heads)

@app.route('/warren/', methods=['GET', 'POST'])
def warren():
    rows = connect("SELECT mname, county, year, passenger_cars, total, total_electricity,"
                   "total_natural_gas FROM map WHERE county ='Warren';")
    heads = ['Municipality', 'County', 'Year', 'Car Emissions', 'Total Emissions',
             'Electricity Emissions', 'Natural Gas Emissions']
    return render_template('warren.html', rows=rows, heads=heads)

@app.route('/morris/', methods=['GET', 'POST'])
def morris():
    rows = connect("SELECT mname, county, year, passenger_cars, total, total_electricity,"
                   "total_natural_gas FROM map WHERE county ='Morris';")
    heads = ['Municipality', 'County', 'Year', 'Car Emissions', 'Total Emissions',
             'Electricity Emissions', 'Natural Gas Emissions']
    return render_template('morris.html', rows=rows, heads=heads)

@app.route('/essex/', methods=['GET', 'POST'])
def essex():
    rows = connect("SELECT mname, county, year, passenger_cars, total, total_electricity,"
                   "total_natural_gas FROM map WHERE county ='Essex';")
    heads = ['Municipality', 'County', 'Year', 'Car Emissions', 'Total Emissions',
             'Electricity Emissions', 'Natural Gas Emissions']
    return render_template('essex.html', rows=rows, heads=heads)

@app.route('/hunterdon/', methods=['GET', 'POST'])
def hunterdon():
    rows = connect("SELECT mname, county, year, passenger_cars, total, total_electricity,"
                   "total_natural_gas FROM map WHERE county ='Hunterdon';")
    heads = ['Municipality', 'County', 'Year', 'Car Emissions', 'Total Emissions',
             'Electricity Emissions', 'Natural Gas Emissions']
    return render_template('hunterdon.html', rows=rows, heads=heads)

@app.route('/somerset/', methods=['GET', 'POST'])
def somerset():
    rows = connect("SELECT mname, county, year, passenger_cars, total, total_electricity,"
                   "total_natural_gas FROM map WHERE county ='Somerset';")
    heads = ['Municipality', 'County', 'Year', 'Car Emissions', 'Total Emissions',
             'Electricity Emissions', 'Natural Gas Emissions']
    return render_template('somerset.html', rows=rows, heads=heads)

@app.route('/union/', methods=['GET', 'POST'])
def union():
    rows = connect("SELECT mname, county, year, passenger_cars, total, total_electricity,"
                   "total_natural_gas FROM map WHERE county ='Union';")
    heads = ['Municipality', 'County', 'Year', 'Car Emissions', 'Total Emissions',
             'Electricity Emissions', 'Natural Gas Emissions']
    return render_template('union.html', rows=rows, heads=heads)

@app.route('/mercer/', methods=['GET', 'POST'])
def mercer():
    rows = connect("SELECT mname, county, year, passenger_cars, total, total_electricity,"
                   "total_natural_gas FROM map WHERE county ='Mercer';")
    heads = ['Municipality', 'County', 'Year', 'Car Emissions', 'Total Emissions',
             'Electricity Emissions', 'Natural Gas Emissions']
    return render_template('mercer.html', rows=rows, heads=heads)

@app.route('/hudson/', methods=['GET', 'POST'])
def hudson():
    rows = connect("SELECT mname, county, year, passenger_cars, total, total_electricity,"
                   "total_natural_gas FROM map WHERE county ='Hudson';")
    heads = ['Municipality', 'County', 'Year', 'Car Emissions', 'Total Emissions',
             'Electricity Emissions', 'Natural Gas Emissions']
    return render_template('hudson.html', rows=rows, heads=heads)

@app.route('/middlesex/', methods=['GET', 'POST'])
def middlesex():
    rows = connect("SELECT mname, county, year, passenger_cars, total, total_electricity,"
                   "total_natural_gas FROM map WHERE county ='Middlesex';")
    heads = ['Municipality', 'County', 'Year', 'Car Emissions', 'Total Emissions',
             'Electricity Emissions', 'Natural Gas Emissions']
    return render_template('middlesex.html', rows=rows, heads=heads)

@app.route('/camden/', methods=['GET', 'POST'])
def camden():
    rows = connect("SELECT mname, county, year, passenger_cars, total, total_electricity,"
                   "total_natural_gas FROM map WHERE county ='Camden';")
    heads = ['Municipality', 'County', 'Year', 'Car Emissions', 'Total Emissions',
             'Electricity Emissions', 'Natural Gas Emissions']
    return render_template('camden.html', rows=rows, heads=heads)

@app.route('/gloucester/', methods=['GET', 'POST'])
def gloucester():
    rows = connect("SELECT mname, county, year, passenger_cars, total, total_electricity,"
                   "total_natural_gas FROM map WHERE county ='Gloucester';")
    heads = ['Municipality', 'County', 'Year', 'Car Emissions', 'Total Emissions',
             'Electricity Emissions', 'Natural Gas Emissions']
    return render_template('gloucester.html', rows=rows, heads=heads)

@app.route('/burlington/', methods=['GET', 'POST'])
def burlington():
    rows = connect("SELECT mname, county, year, passenger_cars, total, total_electricity,"
                   "total_natural_gas FROM map WHERE county ='Burlington';")
    heads = ['Municipality', 'County', 'Year', 'Car Emissions', 'Total Emissions',
             'Electricity Emissions', 'Natural Gas Emissions']
    return render_template('burlington.html', rows=rows, heads=heads)

@app.route('/cumberland/', methods=['GET', 'POST'])
def cumberland():
    rows = connect("SELECT mname, county, year, passenger_cars, total, total_electricity,"
                   "total_natural_gas FROM map WHERE county ='Cumberland';")
    heads = ['Municipality', 'County', 'Year', 'Car Emissions', 'Total Emissions',
             'Electricity Emissions', 'Natural Gas Emissions']
    return render_template('cumberland.html', rows=rows, heads=heads)

@app.route('/salemy/', methods=['GET', 'POST'])
def salem():
    rows = connect("SELECT mname, county, year, passenger_cars, total, total_electricity,"
                   "total_natural_gas FROM map WHERE county ='Salem';")
    heads = ['Municipality', 'County', 'Year', 'Car Emissions', 'Total Emissions',
             'Electricity Emissions', 'Natural Gas Emissions']
    return render_template('salem.html', rows=rows, heads=heads)

@app.route('/cape_may/', methods=['GET', 'POST'])
def cape_may():
    rows = connect("SELECT mname, county, year, passenger_cars, total, total_electricity,"
                   "total_natural_gas FROM map WHERE county ='Cape May';")
    heads = ['Municipality', 'County', 'Year', 'Car Emissions', 'Total Emissions',
             'Electricity Emissions', 'Natural Gas Emissions']
    return render_template('cape_may.html', rows=rows, heads=heads)

@app.route('/atlantic/', methods=['GET', 'POST'])
def atlantic():
    rows = connect("SELECT mname, county, year, passenger_cars, total, total_electricity,"
                   "total_natural_gas FROM map WHERE county ='Atlantic';")
    heads = ['Municipality', 'County', 'Year', 'Car Emissions', 'Total Emissions',
             'Electricity Emissions', 'Natural Gas Emissions']
    return render_template('atlantic.html', rows=rows, heads=heads)

@app.route('/ocean/', methods=['GET', 'POST'])
def ocean():
    rows = connect("SELECT mname, county, year, passenger_cars, total, total_electricity,"
                   "total_natural_gas FROM map WHERE county ='Ocean';")
    heads = ['Municipality', 'County', 'Year', 'Car Emissions', 'Total Emissions',
             'Electricity Emissions', 'Natural Gas Emissions']
    return render_template('ocean.html', rows=rows, heads=heads)

@app.route('/monmouth/', methods=['GET', 'POST'])
def monmouth():
    rows = connect("SELECT mname, county, year, passenger_cars, total, total_electricity,"
                   "total_natural_gas FROM map WHERE county ='Monmouth';")
    heads = ['Municipality', 'County', 'Year', 'Car Emissions', 'Total Emissions',
             'Electricity Emissions', 'Natural Gas Emissions']
    return render_template('monmouth.html', rows=rows, heads=heads)


if __name__ == '__main__':
    app.run(debug=True)
