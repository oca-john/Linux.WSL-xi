#!/bin/bash

echo "Before appending the file"
cat book.txt
                                      # 可以考虑用read加入用户输入的string
echo "Learning Laravel 5">> book.txt  # use pipe
echo "After appending the file"
cat book.txt
