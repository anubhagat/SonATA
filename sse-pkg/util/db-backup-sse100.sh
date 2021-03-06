#!/bin/sh
#############################################

isodate=`date --date=today "+%F"`
echo ${isodate}
echo `date`
mysqldump -h sse100 kepler6667mhz > /Sse.Arc6/sonata/sonata_archive/databases/dump-kepler6667mhz-${isodate}

echo "Dumped database kepler6667mhz to /Sse.Arc6/sonata/sonata_archive/databases/dump-kepler6667mhz-${isodate}"

echo `date`
mysqldump -h sse100 exoplanets6667mhz > /Sse.Arc6/sonata/sonata_archive/databases/dump-exoplanets6667mhz-${isodate}

echo "Dumped database exoplanets6667mhz to /Sse.Arc6/sonata/sonata_archive/databases/dump-exoplanets6667mhz-${isodate}"

echo `date`
mysqldump -h sse100 casa > /Sse.Arc6/sonata/sonata_archive/databases/dump-casa-${isodate}

echo "Dumped database casa to /Sse.Arc6/sonata/sonata_archive/databases/casa-${isodate}"

echo `date`
mysqldump -h sse300 spacecraft > /Sse.Arc6/sonata/sonata_archive/databases/dump-spacecraft-${isodate}

echo "Dumped database spacecraft to /Sse.Arc6/sonata/sonata_archive/databases/spacecraft-${isodate}"

echo `date`
#-------------------------------------------------
echo "Disk space: "
echo "------------"
df -k
echo ""


