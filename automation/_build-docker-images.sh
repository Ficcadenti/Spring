export autoDir=$PWD
export rootDir=$autoDir/..
export JAVA_HOME='C:/Sviluppo/Java/jdk-22.0.1'

image_names=( "test")
image_versions=("latest")
dirs=("../Test")
fileTypes=("war")

for (( i = 0; i < ${#image_names[@]}; ++i )); do
	. $autoDir/_build-docker-image.sh  ${image_names[i]}  ${image_versions[i]}  ${dirs[i]} ${fileTypes[i]} 
done

