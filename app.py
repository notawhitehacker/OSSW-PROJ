from flask import Flask, render_template, request, url_for
import sqlite3
import os

app = Flask(__name__)

DB_PATH = "medicine.db"
SQL_PATH = "medicine.db.sql"

def initialize_database():
    """DB 파일이 없거나 테이블이 없으면 medicine.db.sql 실행"""
    need_init = False

    # DB가 없으면 생성
    if not os.path.exists(DB_PATH):
        print("🧱 DB 파일이 없어서 새로 생성합니다.")
        need_init = True
    else:
        # 테이블 존재 여부 확인
        try:
            conn = sqlite3.connect(DB_PATH)
            cursor = conn.cursor()
            cursor.execute("SELECT 1 FROM OTC_Medicines LIMIT 1;")
            conn.close()
        except:
            print("⚠️ DB는 있지만 테이블이 없어서 초기화합니다.")
            need_init = True

    # 초기화 필요 시 .sql 실행
    if need_init:
        with open(SQL_PATH, "r", encoding="utf-8") as f:
            sql = f.read()
        conn = sqlite3.connect(DB_PATH)
        conn.executescript(sql)
        conn.close()
        print("✅ DB 생성 및 테이블 삽입 완료!")

# ------------ 기존 코드 ------------

def search_by_name(name):
    conn = sqlite3.connect(DB_PATH)
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM OTC_Medicines WHERE Medicine_Name LIKE ?", ('%' + name + '%',))
    result = cursor.fetchall()
    conn.close()
    return result

def recommend_by_effect(effect):
    conn = sqlite3.connect(DB_PATH)
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM OTC_Medicines WHERE Effects LIKE ?", ('%' + effect + '%',))
    result = cursor.fetchall()
    conn.close()
    return result

@app.route('/', methods=['GET', 'POST'])
def index():
    result = None
    keyword = ""
    mode = ""
    if request.method == 'POST':
        mode = request.form['mode']
        keyword = request.form['keyword']
        if mode == 'name':
            result = search_by_name(keyword)
        elif mode == 'effect':
            result = recommend_by_effect(keyword)
    return render_template("index.html", result=result, keyword=keyword, mode=mode)

if __name__ == '__main__':
    initialize_database()  # 실행 전에 DB 확인 및 생성
    app.run(debug=True)
