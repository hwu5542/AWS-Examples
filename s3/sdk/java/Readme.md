# Create new maven project
```sh
mvn archetype:generate \
-DgroupId=com.mycompany.app \
-DartifactId=my-app \
-DarchetypeArtifactId=maven-archetype-quickstart\
-DarchetypeVersion=1.4\
-DinteractiveMode=false
```

```sh
mvn -B archetype:generate \
 -DarchetypeGroupId=software.amazon.awssdk \
 -DarchetypeArtifactId=archetype-lambda -Dservice=s3 -Dregion=US_EAST_1 \
 -DarchetypeVersion=2.31.19 \
 -DgroupId=com.example.myapp \
 -DartifactId=myapp
 ```