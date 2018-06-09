# ClubTV Program Guide
This script consumes the program playlist API endpoint, restructures the response so the data is ordered by channel, and responds with the restructured data.

You may run the script from the IRB console:
```
$ irb
2.2.7 :001 > require_relative 'lib/guide'
 => true
2.2.7 :002 > ChannelGuide.output_guide
 => {"playlist":
  {"sources":
    [
      {"id":"5b06d77a1d0a7e4273aa1b03",
       "url":"http://origin.vidibus.net/videos/5af994a6d9020855a90003e7.smil",
       "available":true,
       "programs":[
        {"id":"5b1151a61d0a7e3c47977bb5",
         "title":"Marco Huck vs. Frantisek Kasanic",
         "starts_at":"2018-06-09T11:03:51Z",
         "ends_at":"2018-06-09T12:02:51Z",
         "asset":"1fed5bc0163001369f4f543d7edaf0a0",
         "source":"5b06d77a1d0a7e4273aa1b03"},
         ....
...
```

To test the app, run `rspec` from the root folder:
```
$ rspec
```
