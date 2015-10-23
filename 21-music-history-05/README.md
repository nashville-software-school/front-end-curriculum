# Music History Part 5

## Individual Project

### Create a new branch

`git checkout -b version5`

### Part One

1. Read from local JSON file with jQuery.
1. Loop over results and inject into Music History list page.
1. Add delete button DOM to each row and use jQuery to delete entire row in the DOM.

### Part Two

1. Take your music and split it into two JSON file instead of them all living on one file.
1. Add a button at the bottom of your music list and label it "More >".
1. Load the songs from the first list and inject the DOM into the document as you've already done.
1. When the [user clicks](https://api.jquery.com/on/) that button, load the songs from the second JSON file and append them to the bottom of the existing music, but before the More button.

## Team Project

You will be split up into teams of 3. Each team will be responsible for implementing a solution to one of the following simple business problems.

### Problem \#1: Expanding product line

You are working as a junior developer team for Acme, Inc. This company sells dog food. Each brand of dog food is represented by an object in an array you get back from the (fictional database) in JSON format.

```js
{
  "dog_brands": [
    {
      "name": "Chuck wagon",
      "types": [
        {
          "type": "all_natural",
          "volumes": [
            {
              "name": "32oz",
              "price": 9.99
            },
            {
              "name": "64oz",
              "price": 17.99
            }
          ]
        },
        {
          "type": "standard",
          "volumes": [
            {
              "name": "58oz",
              "price": 12.99
            },
            {
              "name": "72oz",
              "price": 21.99
            }
          ]
        }
      ]
    },
    {
      "name": "Purina",
      "types": [
        {
          "type": "puppy",
          "volumes": [
            {
              "name": "16oz",
              "price": 8.99
            },
            {
              "name": "24oz",
              "price": 14.99
            }
          ]
        },
        {
          "type": "standard",
          "volumes": [
            {
              "name": "58oz",
              "price": 19.99
            },
            {
              "name": "72oz",
              "price": 24.99
            }
          ]
        }
      ]
    }
  ]
}
```

Your first task is to build a product page that displays all brands of dog food, the different types, with the price and size for each container volume.

Once you have all of that information listed, you need to create a second JSON file to represent the new product line for Acme, Inc. They now want to sell cat food. Your product owner gives you a spreadsheet with all the new data in it. It is your job to get this data represented correctly in JSON format and then update your page to now show cat food, along with dog food.

Brand         |   Breeds      |   Types / Prices
------------- | ------------- | ------------------- |
Purrina       | Siamese, Bengal, Showshoe, Munchkin | Kitten, 20oz, 19.99 : Kitten, 32oz, 26.99 : Kitten, 64oz, 34.99 : Elite, 20oz, 24.99 : Elite, 40oz, 47.99
Meow Meal     | Manx, Egyptian Mau, Himalayan, Rag Doll | Kitten, 24oz, 19.99 : Kitten, 48oz, 34.99 : Adult, 28oz, 22.99 : Adult, 56oz, 40.99

## Problem \#2: Seasonal sale adjustments

You work as a developer for a big box store. Here is a JSON representation of a small sample of the products you sell.

```js
{
  "products": [
    {
      "id": 0,
      "name": "Kids socks",
      "price": 4.99,
      "category_id": 1
    },
    {
      "id": 1,
      "name": "Mens socks",
      "price": 6.99,
      "category_id": 1
    },
    {
      "id": 2,
      "name": "Ladies socks",
      "price": 7.99,
      "category_id": 1
    },
    {
      "id": 3,
      "name": "Foot stool",
      "price": 14.99,
      "category_id": 2
    },
    {
      "id": 4,
      "name": "Lava lamp",
      "price": 9.99,
      "category_id": 2
    },
    {
      "id": 5,
      "name": "3 drawer dresser",
      "price": 64.99,
      "category_id": 2
    },
    {
      "id": 6,
      "name": "Air filter",
      "price": 6.99,
      "category_id": 3
    },
    {
      "id": 7,
      "name": "Surge protector",
      "price": 8.99,
      "category_id": 3
    },
    {
      "id": 8,
      "name": "Plastic storage bin",
      "price": 3.99,
      "category_id": 3
    },
    {
      "id": 9,
      "name": "Light bulb",
      "price": 1.99,
      "category_id": 3
    }
  ]
}
```

Here is a JSON representation of some of the departments in your stores.

```js
{
  "categories": [
    {
      "id": 1,
      "name": "Apparel",
      "season_discount": "Winter",
      "discount": 0.10
    },
    {
      "id": 2,
      "name": "Furniture",
      "season_discount": "Autumn",
      "discount": 0.25
    },
    {
      "id": 3,
      "name": "Household",
      "season_discount": "Spring",
      "discount": 0.15
    }
  ]
}
```

Your job is to build a web page that lists all of the products, the name of the department it's in, and the price. Additionally, put a `<select>` element at the top of the page that contains all possible values of the `season_discount` key in the categories file. As soon as you select one of the seasons, all prices on the page should immediately be discounted by the corresponding percentage.

For example, when _Spring_ is chosen, all products in the corresponding Household category should have their prices updated with a 15% discount off the base price.

The two JSON representations above should be in two files: `products.json`, and `categories.json`. You should load both file via XHRs and store the contents in two different JavaScript variables in your code.


# Resources

1. Use [JSON Lint](http://www.jsonlint.com) to validate your JSON documents.