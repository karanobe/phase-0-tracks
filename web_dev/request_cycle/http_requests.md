# http requests

1. 200: Everything is good and the response request code came back with no problems.
2. 504: Gateway timeout
3. 503: service unavailable; web server is currently unavailable.
4. 500: server side error
5. 403: forbidden; access to the source code is forbidden.
6. 404: not found; the source code was not found or no longer available.

# Difference between GET request and a POST request:

1. Get requests data from a specified source for the client
  * GET requests can be cached
  * GET requests remain in the browser history
  * GET requests can be bookmarked
  * GET requests should never be used when dealing with sensitive data
  * GET requests have length restrictions
  * GET requests shold be used only to retrieve data

2. POST submits data to a specified source for the client
  * POST requests are never cached
  * POST requests do not remain in the browser history
  * POST requests cannot be bookmarked
  * POST requests have no restrictions on data length

3. Cookies are small pieces of data stored as text on the client's computer. 
Normally cookies are used only to store small amounts of data, including user 
preferences, time and more.