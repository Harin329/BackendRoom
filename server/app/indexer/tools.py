import logging
from common.config import MYSQL_HOST, MYSQL_PORT, MYSQL_USER, MYSQL_PWD, MYSQL_DB
import MySQLdb


def connect_mysql():
    try:
        conn = MySQLdb.connect(host=MYSQL_HOST,user=MYSQL_USER,port=MYSQL_PORT,password=MYSQL_PWD,database=MYSQL_DB, local_infile=True)
        return conn
    except Exception as e:
        print("MYSQL ERROR: connect failed")
        logging.error(e)


def post_health(conn, cursor, name, ID):
    sql = 'postHealth'
    try:
        res = cursor.callproc(sql, (name, ID))
        print(res)
        return res
    except Exception as e:
        print("MYSQL ERROR:", sql)
        logging.info(conn)
        logging.error(e)
