# Authenticating Users

## Basics

1. What is authentication?
1. What is OAuth? Describe the basic workflow.
1. Talk with students about what authentication will provide for them in their Music History application.

## OAuth with Firebase and Github

1. Have students [create a Github application](https://github.com/settings/applications/new) for Music History
1. Set up [Github integration](https://www.firebase.com/docs/web/guide/login/github.html) in Firebase
1. Show example code to [display the Github login prompt](https://github.com/nashville-software-school/music-history-step-by-step/blob/d4ba72f339ef292144239782571ee1b37d789d1b/javascripts/main.js#L28)
1. Talk through what they will need to change in their applications to integrate authentication (wipe/update current songs with userId, [only querying data from Firebase for the current user](https://github.com/nashville-software-school/music-history-step-by-step/blob/master/javascripts/core_list.js#L23))
1. Ensure they understand that no logical operations for querying data should happen [until the user is authenticated](https://github.com/nashville-software-school/music-history-step-by-step/blob/v6.0/javascripts/main.js#L32).

# Challenge \#1

Sign up for a free account with [OAuth.io](http://oauth.io) and use their service to allow users to authenticate to your Music History application against any of the 150 providers they work with:  Facebook, Instagram, Twitter, Google,  Disqus, and many others.

# Challenge \#2

OAuth.io provides integration with [Stormpath](https://stormpath.com/), which allows you to have full user management for an application instead of relying upon another service like Google, Facebook, or Github to handle user authentication.

Sign up for a free Stormpath account, integrated with OAuth.io and then build a registration & login view for your application that lets user create a new account for use with your Music History.
