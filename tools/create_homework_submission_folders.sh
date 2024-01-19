#!/bin/bash
cat <<'EOF'
  _   _                                         _     
 | | | | ___  _ __ ___   _____      _____  _ __| | __ 
 | |_| |/ _ \| '_ ` _ \ / _ \ \ /\ / / _ \| '__| |/ / 
 |  _  | (_) | | | | | |  __/\ V  V / (_) | |  |   <  
 |_|_|_|\___/|_| |_| |_|\___| \_/\_/ \___/|_|  |_|\_\ 
 / ___| _   _| |__  _ __ ___ (_)___ ___(_) ___  _ __  
 \___ \| | | | '_ \| '_ ` _ \| / __/ __| |/ _ \| '_ \ 
  ___) | |_| | |_) | | | | | | \__ \__ \ | (_) | | | |
 |____/ \__,_|_.__/|_| |_| |_|_|___/___/_|\___/|_| |_|
 |  ___|__ | | __| | ___ _ __ ___                     
 | |_ / _ \| |/ _` |/ _ \ '__/ __|                    
 |  _| (_) | | (_| |  __/ |  \__ \                    
 |_|  \___/|_|\__,_|\___|_|  |___/    

EOF
TOOLS=`dirname $0`
DEST_DIR="/data/IFI8410/submissions"
TERM_DIR="P24"

if [ ! -d $DEST_DIR ]
then
    echo "Folder does not exist: $DEST_DIR"
    exit 1
fi

mkdir -p $DEST_DIR/$TERM_DIR
chmod o=x $DEST_DIR/$TERM_DIR

for STUDENT in `$TOOLS/students_list.py`
do
    echo "Student: $STUDENT"
done