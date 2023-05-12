import os
import pandas as pd
import psycopg2 as pg

if __name__ == '__main__':
    conn = pg.connect(f"""
        dbname='{os.getenv("pg_db")}' 
        user='{os.getenv("postgres")}' 
        host='{os.getenv("localhost")}' 
        port='{os.getenv("5432")}' 
        password='{os.getenv("postgres")}'
    """)

    cursor = conn.cursor()

    cursor.execute("""
    insert into pm.project (project_id, project_name, project_priority, project_status) values
	    (11, '"Квантория 2.0"', 5, 0),
	    (12, '"Цифровой переворот 2.0"', 4, 0)
    """)

    cursor.execute("""
    insert into pm.user (user_id, user_name, cmd_id) values
	    (10, 'Николай Долгопрудный', null),
	    (11, 'Арлан Алиев', 0),
	    (12, 'Меоргий Гогилев', 0)
    """)

    conn.commit()
