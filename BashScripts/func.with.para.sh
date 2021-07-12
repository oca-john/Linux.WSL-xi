#!/bin/bash

rectangleArea() {
area=$(($1 * $2))       # 长乘以宽
echo "Area is : $area"  # 变量调用需要加$
}

rectangleArea 10 20
