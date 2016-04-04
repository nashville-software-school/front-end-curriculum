# Music History in Angular

Now you can walk students through building a bare bones version of Music History in Angular. Start by reviewing all of the [standard releases](https://github.com/nashville-software-school/angular-step-by-step/releases) that were made. It starts with the basics, and goes all the way to using Browserify and Angular together. Clone the [angular step-by-step repo](https://github.com/nashville-software-school/angular-step-by-step) and checkout the **v1.0** tag (i.e. `git checkout tags/v1.0`) to get started with building a basics of an Angular application with `ng-app`, `ng-controller`, `ng-model`, `ng-repeat`, and routing with `ngRoute`.

Keep checking out the tags up to `v8.0` to show them the progressively more complex features. Once you're done walking them through it, assign them the task of building their Music History application in Angular.

When you think they are ready, switch to the `one-to-many` branch and have a live-coding and Q&A session about how to use Angular and Firebase to work with data that has a one-to-many relationship between items in different collections of data.

##### Music History Data with Favorites

```json
{
  "songs" : {
    "-KCqdf5rTTFMN2cQHkfp" : {
      "album" : {
        "name" : "333",
        "year" : "2002"
      },
      "artist" : "Full Devil Jacket",
      "name" : "Fast Black",
      "uid" : "c2fb9a6d-73df-4475-afe4-b32d5385a016"
    },
    "-KCqeBLMFJ5dqRDTZ1Gh" : {
      "album" : {
        "name" : "Ten",
        "year" : "1992"
      },
      "artist" : "Pearl Jam",
      "name" : "Leash"
    },
    "-KD9juqaT0Zac7a8xpGx" : {
      "album" : {
        "name" : "op",
        "year" : "op"
      },
      "artist" : "op",
      "name" : "op",
      "uid" : "57d69b7f-654b-4a93-9635-1e29ce6a930f"
    },
    "breakfast" : {
      "album" : {
        "name" : "Breakfast in America",
        "year" : 1981
      },
      "artist" : "Supertramp",
      "favorited" : {
        "-KE1Y2vAe9ZJ-oBl1dRN" : 5,
        "-KEHz-oo5j7-sIBRAGIM" : 2
      },
      "id" : "breakfast",
      "name" : "Breakfast in America"
    },
    "carryon" : {
      "album" : {
        "name" : "Overture",
        "year" : 1978
      },
      "artist" : "Kansas",
      "favorited" : {
        "-KE1Y2vAe9ZJ-oBl1dRN" : 3,
        "-KEHz-oo5j7-sIBRAGIM" : 5
      },
      "id" : "carryon",
      "name" : "Carry on My Wayward Son"
    },
    "divertimento" : {
      "album" : {
        "name" : "Unknown",
        "year" : 1772
      },
      "artist" : "Wolgang Amadeus Mozart",
      "favorited" : {
        "-KEHz-oo5j7-sIBRAGIM" : 3
      },
      "id" : "divertimento",
      "name" : "Divertimento In D Major, K. 25"
    },
    "gimme" : {
      "album" : {
        "name" : "Eliminator",
        "year" : 1985
      },
      "artist" : "ZZ Top",
      "favorited" : {
        "-KEHz-oo5j7-sIBRAGIM" : 3
      },
      "id" : "gimme",
      "name" : "Gimme All Your Lovin"
    },
    "goodbyemary" : {
      "album" : {
        "name" : "Breakfast in America",
        "year" : 1981
      },
      "artist" : "Supertramp",
      "id" : 3,
      "name" : "Goodbye Mary",
      "uid" : "c2fb9a6d-73df-4475-afe4-b32d5385a016"
    },
    "hello" : {
      "album" : {
        "name" : "Can't Slow Down",
        "year" : 1984
      },
      "artist" : "Lionel Ritchie",
      "name" : "Hello",
      "uid" : "c2fb9a6d-73df-4475-afe4-b32d5385a016"
    },
    "ratherbe" : {
      "album" : {
        "name" : "Rather Be",
        "year" : 2015
      },
      "artist" : "Silent Bandit",
      "name" : "Rather Be",
      "uid" : "c2fb9a6d-73df-4475-afe4-b32d5385a016"
    },
    "sharp" : {
      "album" : {
        "name" : "Eliminator",
        "year" : 1985
      },
      "artist" : "ZZ Top",
      "id" : 1,
      "name" : "Sharp Dressed Man",
      "uid" : "c2fb9a6d-73df-4475-afe4-b32d5385a016"
    }
  },
  "users" : {
    "-KDinjSYr6MmqMnDugjR" : {
      "uid" : "01d4b457-0f97-453d-bedc-192324bfb24c"
    },
    "-KE1Y2vAe9ZJ-oBl1dRN" : {
      "uid" : "3d61ae47-bf36-4393-b11b-8fd7fbd54b7f"
    },
    "-KEHz-oo5j7-sIBRAGIM" : {
      "uid" : "791e0fd3-fccf-465a-8c1f-bf9dbf25a5d7"
    }
  }
}
```