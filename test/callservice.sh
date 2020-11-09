#!/bin/bash
# JSON object to pass to Lambda Function
json={"\"name\"":"\"Susan\u0020Smith\",\"param1\"":1,\"param2\"":2,\"param3\"":3} 
#echo "Invoking Lambda function using API Gateway"
#time output=`curl -s -H "Content-Type: application/json" -X POST -d $json https://ld3bhrfrrb.execute-api.us-east-2.amazonaws.com/oct26_test`
echo ""
echo ""
#echo "JSON RESULT:"
#echo $output | jq


echo ""
echo "Invoking Lambda function using AWS CLI"
time output=`aws lambda invoke --invocation-type RequestResponse --function-name helloSqlite --region us-east-2 --payload $json /dev/stdout | head -n 1 | head -c -2 ; echo`
echo ""
echo "JSON RESULT:"
echo $output | jq
echo ""
