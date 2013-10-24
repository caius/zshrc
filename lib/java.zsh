if [[ -f /usr/libexec/java_home ]]; then

  if [[ "13.0.0" == "$(uname -r)" ]]; then
	  # Mavericks, psh
	  JAVA_VERSION="1.7"
  else
	  JAVA_VERSION="1.6"
  fi

  # Fuck you JAVA
  export JAVA_HOME="$(/usr/libexec/java_home -v $JAVA_VERSION)"
fi
