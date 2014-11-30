java_home="/usr/libexec/java_home"
if [[ -f $java_home ]]; then
  export JAVA_HOME="$($java_home -V 2>&1 | awk 'NR == 2 { print $6 }')"
fi
