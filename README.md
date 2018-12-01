Performance test samples for different AWS Lambda languages


artillery quick --duration 60 --rate 10 --num 1 https://xyz.execute-api.us-east-1.amazonaws.com/dev/ruby25


filter @type = "REPORT"
| stats avg(@duration), max(@duration), min(@duration) by @duration