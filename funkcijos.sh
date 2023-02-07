#!/bin/bash

# Parašo, ar skaičius lyginis, ar nelyginis
evenodd() {
	LAST_DIGIT=`echo $1 | sed 's/\(.*\)\(.\)$/\2/'`
	case $LAST_DIGIT in
	0|2|4|6|8)
		echo "lyginis"
	;;
	*)
		echo "nelyginis"
	;;
	esac
}

#Automatiškai sukuria failą su .sh plėtiniu ir chmod 755 leidimais

sf() {
	touch $1.sh
	chmod 755 $1.sh
	echo "#!/bin/bash" > $1.sh
}

sfa() {
  touch $1.sh
  chmod 755 $1.sh
  echo "#!/bin/bash" > $1.sh
  vim $1.sh
}

gyvas() {
  NODE=$1
  $PING -c 3 $NODE >/dev/null 2>&1
  if [ $? -eq 0 ]
    then
    echo "Gyvas"
  else
    echo "Negyvas"
  fi
}

setupenv() {
  if [ "$OSTYPE" = "" ]
  then
    ostype
  fi
  OSTYPE=`uname -s`
  case $OSTYPE in
    "Linux")
      PING=/usr/sbin/ping
    ;;
    "FREEBSD")
      PING=/sbin/ping
    ;;
    "SOLARIS")
      PING=/usr/sbin/ping
    ;;
    *)
      echo "Unrecognized OS!"
    ;;
  esac
}

