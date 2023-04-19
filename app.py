import psycopg2
from config import config
from flask import Flask, render_template, request, url_for, redirect


# Connect to the PostgreSQL database server
def connect(query):
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

@app.route('/sussex/', methods=['GET', 'POST'])
def sussex():
    if request.method == 'POST':
        return redirect(url_for('index'))
    rows = connect('SELECT * FROM municipality WHERE county = sussex;')
    heads = ['name', 'year', 'county', 'primary key']
    return render_template('sussex.html', rows=rows, heads=heads)



if __name__ == '__main__':
    app.run(debug=True)