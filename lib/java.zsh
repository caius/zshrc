if [[ -f /usr/libexec/java_home ]]; then
  # Fuck you JAVA
  JAVA_VERSION=$(/usr/libexec/java_home -V 2>&1 | awk '/1\./ { gsub(",", "", $1); print $1; exit }')
  export JAVA_HOME="$(/usr/libexec/java_home -v $JAVA_VERSION)"
fi
