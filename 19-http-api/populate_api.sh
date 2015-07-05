#!/bin/bash

# Make sure you `chmod +x populate_api.sh` to make this an executable script

curl -i -H "Content-Type: application/json" -X POST -d '{"name":"fruit"}' http://192.168.33.10:1337/foodtype
curl -i -H "Content-Type: application/json" -X POST -d '{"name":"meat"}' http://192.168.33.10:1337/foodtype
curl -i -H "Content-Type: application/json" -X POST -d '{"name":"fish"}' http://192.168.33.10:1337/foodtype
curl -i -H "Content-Type: application/json" -X POST -d '{"name":"fungus"}' http://192.168.33.10:1337/foodtype
curl -i -H "Content-Type: application/json" -X POST -d '{"name":"vegetable"}' http://192.168.33.10:1337/foodtype
curl -i -H "Content-Type: application/json" -X POST -d '{"name":"nut"}' http://192.168.33.10:1337/foodtype
curl -i -H "Content-Type: application/json" -X POST -d '{"name":"dairy"}' http://192.168.33.10:1337/foodtype

curl -i -H "Content-Type: application/json" -X POST -d '{"name":"plum", "type":1, "shape":"oval", "color":"purple"}' http://192.168.33.10:1337/food
curl -i -H "Content-Type: application/json" -X POST -d '{"name":"banana", "type":1, "shape":"oblong", "color":"yellow"}' http://192.168.33.10:1337/food
curl -i -H "Content-Type: application/json" -X POST -d '{"name":"beef", "type":2, "shape":"oval", "color":"red"}' http://192.168.33.10:1337/food
curl -i -H "Content-Type: application/json" -X POST -d '{"name":"pork", "type":2, "shape":"oval", "color":"pink"}' http://192.168.33.10:1337/food
curl -i -H "Content-Type: application/json" -X POST -d '{"name":"oyster", "type":3, "shape":"circle", "color":"white"}' http://192.168.33.10:1337/food
curl -i -H "Content-Type: application/json" -X POST -d '{"name":"sea bass", "type":3, "shape":"oval", "color":"red"}' http://192.168.33.10:1337/food
curl -i -H "Content-Type: application/json" -X POST -d '{"name":"mushroom", "type":4, "shape":"tree", "color":"white"}' http://192.168.33.10:1337/food
curl -i -H "Content-Type: application/json" -X POST -d '{"name":"truffle", "type":4, "shape":"circle", "color":"brown"}' http://192.168.33.10:1337/food
curl -i -H "Content-Type: application/json" -X POST -d '{"name":"carrot", "type":5, "shape":"cone", "color":"orange"}' http://192.168.33.10:1337/food
curl -i -H "Content-Type: application/json" -X POST -d '{"name":"eggplant", "type":5, "shape":"oval", "color":"purple"}' http://192.168.33.10:1337/food
curl -i -H "Content-Type: application/json" -X POST -d '{"name":"peanut", "type":6, "shape":"circle", "color":"purple"}' http://192.168.33.10:1337/food
curl -i -H "Content-Type: application/json" -X POST -d '{"name":"walnut", "type":6, "shape":"oval", "color":"purple"}' http://192.168.33.10:1337/food
curl -i -H "Content-Type: application/json" -X POST -d '{"name":"cheddar cheese", "type":7, "shape":"varied", "color":"orange"}' http://192.168.33.10:1337/food
curl -i -H "Content-Type: application/json" -X POST -d '{"name":"milk", "type":7, "shape":"varied", "color":"white"}' http://192.168.33.10:1337/food
