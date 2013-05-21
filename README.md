## Google Books API Sample: Min functionality

##### This app displays a paginated list of "ruby on rails" books, using the Google Books API and jQuery FlexiGrid plugin for visualization.
##### It has HAML, AJAX, SCSS on board. 
##### Information about books from Google Books API duplicates in local SQLite DB in order to show high performance and to save limited number of requests to API. There is a cron task for this functionality implemented with Whenever gem. It refreshes local DB every 3 hours.
##### This is a simpliest configuration so it's performance ~5000 requests per minute in production environment on Ubuntu 12.04/Webrick/SQLite/Athlon XP 2500+/4GB RAM. This was tested with ab tool:

andrew@andrew-zuht-machine:~/rails/ror_books$ ab -t 60 http://0.0.0.0:3000/

This is ApacheBench, Version 2.3 <$Revision: 655654 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking 0.0.0.0 (be patient)
Finished 4239 requests


Server Software:        WEBrick/1.3.1
Server Hostname:        0.0.0.0
Server Port:            3000

Document Path:          /
Document Length:        1508 bytes

Concurrency Level:      1
Time taken for tests:   60.009 seconds
Complete requests:      5077
Failed requests:        0
Write errors:           0
Total transferred:      9257976 bytes
HTML transferred:       6392412 bytes
Requests per second:    84.62 [#/sec] (mean)
Time per request:       14.156 [ms] (mean)
Time per request:       14.156 [ms] (mean, across all concurrent requests)
Transfer rate:          150.66 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.0      0       0
Processing:    11   14  10.3     12     207
Waiting:       11   14  10.3     11     207
Total:         11   14  10.3     12     207

Percentage of the requests served within a certain time (ms)
  50%     12
  66%     12
  75%     13
  80%     13
  90%     14
  95%     14
  98%     67
  99%     70
 100%    207 (longest request)

 
