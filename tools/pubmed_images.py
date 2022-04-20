#pip install pubmed-parser
import pubmed_parser as pp
import pymongo
myclient = pymongo.MongoClient("mongodb://localhost:27017/")
mydb = myclient["mydatabase"]