#!/bin/sh

# Attempt to set APP_HOME
PRG="$0"
while [ -h "$PRG" ] ; do
    ls=`ls -ld "$PRG"`
    link=`expr "$ls" : '.*-> \(.*\)$'`
    if expr "$link" : '/.*' > /dev/null; then
        PRG="$link"
    else
        PRG=`dirname "$PRG"`"/$link"
    fi
done
APP_HOME=`dirname "$PRG"`

# Add default JVM options here. You can also use JAVA_OPTS and GRADLE_OPTS to pass JVM options to this script.
DEFAULT_JVM_OPTS='-Xmx64m -Xms64m'

# Use the maximum available, or set MAX_FD != -1 to use that value.
MAX_FD=maximum

# For Cygwin, switch paths to Windows format before running java
if [ "$cygwin" = "true" ]; then
    APP_HOME=`cygpath --path --mixed "$APP_HOME"`
    CLASSPATH=`cygpath --path --mixed "$CLASSPATH"`
fi

# Split up the JVM_OPTS And GRADLE_OPTS values into an array
function splitJvmOpts() {
    JVM_OPTS=("$@")
}

splitJvmOpts $DEFAULT_JVM_OPTS $JAVA_OPTS $GRADLE_OPTS

exec "$JAVA_HOME/bin/java" ${JVM_OPTS[@]} -classpath "$APP_HOME/gradle/wrapper/gradle-wrapper.jar" org.gradle.wrapper.GradleWrapperMain "$@"
