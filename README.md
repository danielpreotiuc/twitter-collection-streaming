# Twitter Streaming collection tools

## Description

This are simple Python and Ruby scripts that perform bulk and continuous download from the Twitter Streaming API of all tweets the account has access.

## Installation

The code needs the tweetstream package for either Python or Ruby. The Python version can be found inside the python folder or [can be found here] (https://pypi.python.org/pypi/tweetstream). The Ruby gem can be installed using:

	gem install tweetstream

Each version has a scrape file. Before using the scripts, you need to edit the scrape file and add the Twitter API keys in order to authenticate. For more information check the [Twitter API](https://dev.twitter.com/).

## Quick start

	./python/grab-python.sh
	./ruby/grab-ruby.sh

Both scripts use the scrape script to download tweets for an hour. The output is placed in a file named twitter-yyyy-mm-dd-hh in the same folder. The scripts are best used with a cron entry if trying to constantly download the Twitter stream. The corresponding cron entry would be:

	0 * * * * ./python/grab-python.sh >> ./python/grab-python.log 2>&1

