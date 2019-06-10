# Importation des Bibliothèques
import serial
import mysql.connector

def recupDonnée(id_utilisateu):
    # Connection à la base de donnée
    cnx = mysql.connector.connect(user='root', password='root',
                                host='localhost',
                                database='planteco',
                                port=3306)

    cursor = cnx.cursor(buffered=True)

    # Connection aux capteurs
    ser = serial.Serial('COM5', baudrate = 9600, timeout=1)

    insert = ('INSERT INTO donnée_capteur '
            ' ( donnee_date, donnee_luminosite, donnee_humidite, donnee_temperature, fk_plante_utilisateur_id )'
            ' VALUE (CURRENT_TIMESTAMP(), 1 , 2 , 3 , '+ str(id_utilisateu) +')')

    data = ser.readline().decode('utf-8')
    data = data.split('return')
    while len(data) != 1:
        del data[-1]
    data = data[0].split(' ')
    for chiffre in data:
        if chiffre == data[0]:
            insert = insert.replace(' 3 ', chiffre)
        if chiffre == data[1]:
            insert = insert.replace(' 1 ', chiffre)
        if chiffre == data[2]:
            insert = insert.replace(' 2 ', chiffre)
    print(insert)
    cursor.execute(insert)
    cnx.commit()

recupDonnée(5)