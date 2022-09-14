# HTML2MAIL

This little scripts bundles an html file and all it's css/images in
a multipart email so that you can send it by sendmail/msmtp.

Example 1:

    > html2mail -t YOUR-EMAIL -s SUBJECT example/example.html | msmtp -t

Example 2:

    > msmtp -t <<-EOF
    To: YOUR-EMAIL
    Subject: SUBJECT
    `html2mail example/example.html`
    EOF

## Help

html2mail

    Usage: html2mail [-D DIR][-s SUBJECT][-t TO][-n name] HTML-FILE > MAIL
    
    Convert a local HTML file into a multipart that can be sent with
    msmtp(1) or sendmail(1). Links that start with "/" will be searched
    for in "DIR" if specified.
    
    Remember:
    
    1.- GMail doesn't support linking css, must be inline.

## Collaborating

For making bug reports, feature requests and donations visit
one of the following links:

1. [gemini://harkadev.com/oss/](gemini://harkadev.com/oss/)
2. [https://harkadev.com/oss/](https://harkadev.com/oss/)

