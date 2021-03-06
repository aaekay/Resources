## connectin in windows
install in user directory
export path to the bash of mongosh directory
export PATH=$/c/

## course
m103
m320 data modelling course
aggregation pipeline course

## structure of collection
    _id field should be unique - default type is object id

## accounts details
mitu.garg11@gmail.com
m001-student
m001-mongodb-basics
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




## find command
show dbs

use sample_training

show collections

db.zips.find({})
    to display the collection
or
db.inspections.findOne()

db.zips.find({"state": "NY"})
    it command to iterate over next items
    presents as randomly, not in a particular order

db.zips.find({"state": "NY"}).count()

db.zips.find({"state": "NY", "city": "ALBANY"})

db.zips.find({"state": "NY", "city": "ALBANY"}).pretty()
    to see the data prettier

## insert new document
    you can insert it directly

    db.inspections.findOne()
    db.inspections.insert({
      "_id" : ObjectId("56d61033a378eccde8a8354f"),
      "id" : "10021-2015-ENFO",
      "certificate_number" : 9278806,
      "business_name" : "ATLIXCO DELI GROCERY INC.",
      "date" : "Feb 20 2015",
      "result" : "No Violation Issued",
      "sector" : "Cigarette Retail Dealer - 127",
      "address" : {
              "city" : "RIDGEWOOD",
              "zip" : 11385,
              "street" : "MENAHAN ST",
              "number" : 1712
         }
  })

db.inspections.insert({
      "id" : "10021-2015-ENFO",
      "certificate_number" : 9278806,
      "business_name" : "ATLIXCO DELI GROCERY INC.",
      "date" : "Feb 20 2015",
      "result" : "No Violation Issued",
      "sector" : "Cigarette Retail Dealer - 127",
      "address" : {
              "city" : "RIDGEWOOD",
              "zip" : 11385,
              "street" : "MENAHAN ST",
              "number" : 1712
         }
  })
to check for duplicacy of a specific
db.inspections.find({"id" : "10021-2015-ENFO", "certificate_number" : 9278806}).pretty()

## inserting multiple documents
    db.inspections.insert([{ "_id": 1, "test": 1 },{ "_id": 1, "test": 2 },{ "_id": 3, "test": 3 }],{ "ordered": false })
        false ordered prevents rest of the document to be inserted

## updating documents
inc - mql update operator 
    updates the value of the specified field
set - just set the fielf value to a new specified value
push - 


    1. updateOne() - update one only
        findOne -
    2. updateMany()
        `db.zips.updateMany({ "city": "HUDSON" }, { "$inc": { "pop": 10 }])`

## deleting the document
    1. deleteOne
    2. deleteMany
    3. findOne
    4. db.collection.drop()

## query operators
$ sign is used for operators


1. Comparison
    $eq == equal to
    ne  == not ew
    gt  ==  
    lt
    gte
    lte

eg db.trips.find({ "tripduration": { "$lte" : 70 },
                "usertype": "Customer" }).pretty()

2. Logic
    and == default operator 
    or
    nor == fail to match both 
    not

    syntax ==  db.routes.find({ "$and": [ { "$or" :[{ "dst_airport": "KZN" },
                                    { "src_airport": "KZN" }
                                  ] },
                          { "$or" :[ { "airplane": "CR2" },
                                     { "airplane": "A81" } ] }
                         ]}).pretty()