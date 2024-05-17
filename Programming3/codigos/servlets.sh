search_dir=/opt/tomcat/webapps/app_name/WEB-INF/src
for entry in "$search_dir"/*
do
  javac -cp /opt/tomcat/lib/servlet-api.jar -d classes/ $entry
  echo "javac -cp /opt/tomcat/lib/servlet-api.jar -d classes/ $entry"
done
