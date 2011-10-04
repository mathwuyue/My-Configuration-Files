#!/bin/csh -f

#cd images/icons
#ls *.png *.xpm > ../../icons-all
cd images/buttons
ls *.png *.xpm >> ../../icons-all
#cd ../mini
#ls *.png *.xpm >> ../../icons-all

cd ../..
sort icons-all > tmp; mv tmp icons-all

echo "Created icons-all"

