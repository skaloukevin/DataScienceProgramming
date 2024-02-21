
DIR=`dirname $0`

if [ -z "$1" ]
then
    for T in $DIR/test_5_*.py
    do
        python3 -m pytest $T
    done
else
    # N=$(printf "%02d" $1)
    N=$1
    T="${DIR}/test_5_${N}.py"
    if [ -f $T ]
    then
        python3 -m pytest $T
    else
        echo "Test ${N} does not exist: {$T}"
    fi
fi
echo "Testing completed."
