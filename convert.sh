mkdir output
for FILE in *.MTS
do
	FILENAME=`echo ${FILE} | sed 's/\.[^\.]*$//'`
	ffmpeg -i ${FILENAME}.MTS -vcodec copy -acodec copy ./output/${FILENAME}.mp4
	chmod a+rwx ./output/${FILENAME}.mp4
done
