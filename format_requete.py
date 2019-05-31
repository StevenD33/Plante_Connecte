log = open ('putty.txt', 'r', encoding="utf-8")
bdd = open ('bdd.txt', 'w', encoding="utf-8")

insert_demo = 'INSERT INTO donnée_capteur (\'date\', \'luminosite\', \'humidite\', \'temperature\') VALUES (CURRENT_TIMESTAMP(),\' 1 \',\' 2 \',\' 3 \'); \n'

log = log.read()
log = log.split('return')
del log[0]
del log[-1]

for ligne in log:
    insert = insert_demo
    ligne = ligne.split(' ')
    for chiffre in ligne:
        if chiffre == ligne[0]:
            insert = insert.replace(' 1 ', chiffre)
        if chiffre == ligne[1]:
            insert = insert.replace(' 2 ', chiffre)
        if chiffre == ligne[2]:
            insert = insert.replace(' 3 ', chiffre)
    bdd.write(insert)
#    bdd.write(insert_demo)