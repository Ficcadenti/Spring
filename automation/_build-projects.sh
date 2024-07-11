export autoDir=$PWD
export rootDir=$autoDir/..
export JAVA_HOME='C:/Sviluppo/Java/jdk-22.0.1'

projects=("Test")

for value in "${projects[@]}"
do
  . $autoDir/_build-project.sh $rootDir/$value
done

