#!/bin/bash
# Work with sed

echo -- Step 1 > ./test_sed
echo "This is some text" > ./test_sed
echo "This is some text" | sed 's/some/another/'
sed 's/text/word/' ./test_sed
sed '/text/d' ./test_sed
