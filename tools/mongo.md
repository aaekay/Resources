
importing data
    mongoimport
        import data into json
    mongoexport
        export bson data into json
    mongorestore
        imports data into bson dump

uri string =  srv string - secure connection
database name

mongodump
    export data into bson

m001-student:m001-mongodb-basics
#  code of data import and export
mongodump --uri "mongodb+srv://<your username>:<your password>@<your cluster>.mongodb.net/sample_supplies"

mongoexport --uri="mongodb+srv://<your username>:<your password>@<your cluster>.mongodb.net/sample_supplies" --collection=sales --out=sales.json

mongorestore --uri "mongodb+srv://<your username>:<your password>@<your cluster>.mongodb.net/sample_supplies"  --drop dump

mongoimport --uri="mongodb+srv://<your username>:<your password>@<your cluster>.mongodb.net/sample_supplies" --drop sales.json

# query
