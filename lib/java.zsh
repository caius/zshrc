if [[ -f /usr/libexec/java_home ]]; then
  export JAVA_HOME="$(/usr/libexec/java_home -V 2>&1 | awk 'NR == 2 { print $6 }')"
fi
