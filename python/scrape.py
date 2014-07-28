import sys, os, urllib2, tweetstream, json
from datetime import datetime as dt

CONSUMER_KEY = ""
CONSUMER_SECRET = ""
ACCESS_TOKEN_KEY =  ""
ACCESS_TOKEN_SECRET =  ""

stream=tweetstream.SampleStream

start=dt.now()

with stream(CONSUMER_KEY, CONSUMER_SECRET, ACCESS_TOKEN_KEY, ACCESS_TOKEN_SECRET) as stream:
	while 1==1:
	        try: 
   			for tweet in stream:
				print json.dumps(tweet)
				now = dt.now()
				if (now - start).seconds > 3600:
					break
		except:
			now = dt.now()
                        if (now - start).seconds > 3600:
                        	break
			else:
				continue
