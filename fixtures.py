import sys , os, datetime
sys.path.insert(0,os.path.join(os.path.dirname(__file__), ".."))
from  elasticsearch.models import Base, ToDo , Session

def sqlite_setup():

    # add one data
    add_some_data()
    
    #retreive data added
    add_some_data_success()
    
def postgress_setup():
    pass

def add_some_data():
    #for i in range(50024, 50026):
    for i in range(0, 1):
	Session.add(ToDo(do  ='Allaiter bebe 80000014',
		             time= datetime.datetime.today(),
		             done=False))
        print i
	Session.commit()
            
def add_some_data_success():
    print "=========DATA========"
    print Session.query(ToDo).count()
    # 62943
    

if __name__ =="__main__":
    sqlite_setup()
    
    




