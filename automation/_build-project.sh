#!/bin/sh
echo "---"
echo "---"
echo "----------------- build $1 -----------------"
echo "---"
echo "---"
cd $1
mvn -DXmx1G -DXss1G clean install -Pdev -DskipTests