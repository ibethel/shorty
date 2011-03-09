# About Shorty

Shorty is a quick and dirty, yet highly useful, URL shortener written for Bethel Church.  The basic premise is that it allows
any user with an "@ibethel.org" email address to quickly create shortened URLs to provide to the public.

These URLs are tracked by referrer and by visitor, allowing us to gain a better understanding of who is sending traffic our
direction and who those users are.

There are a couple ways to get to the stats page.  The first way is to click on the link title when viewing the complete list of shorts. (the home page)
The second way is to simply append "+" to the end of the short URL.  For example, if the short URL is http://shorty.me/jsns, then to get to the
stats page, simply type in http://shorty.me/jsns+ and you will be redirected.


### FAQ

#### What if I want to delete a short?
Unfortunately this is not possible.  You can edit it to redirect to something else, but deleting it can be problematic.  If this request becomes
requested often enough, the feature may be built in.  But for now, it is not available, sorry.


#### But what if I want to expire my link?
Nothing automated at this point, sorry.  But you can just change the short-code or expanded URL to send the user to something else.  If
you change the short code, users that attempt to use the invalid short code will be shown a shorty 404 page.


#### Can I change the short code?
YES!  You can change the short code.  However, be very careful with this.  Shorty DOES NOT keep a history of short codes, so you are at risk
of breaking links that may have already been put out there.

#### Is there an API?
Not yet.  If there is a need, we might build one, but nothing in the works at this point.

### Todo
1. Write tests
2. Capture more information about users
3. Better reporting output