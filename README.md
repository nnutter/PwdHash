Introduction
------------
PwdHash is an Objective-C implementation of the PwdHash algorithm for
generating site-specific passwords using the site's domain and a private
password.

More info about the original PwdHash algorithm can be found at
[https://www.pwdhash.com][ph].

Getting Started
---------------
1. Add PwdHash to your project.
2. `#import PwdHash.h`.
3. `NSString *hashedPassword = [PwdHash generate:@"privatePassword" site:@"siteURL"];`

License
-------

To be determined.

[ph]: https://www.pwdhash.com
