for FILE in *.MTS
do
	FILENAME=`echo ${FILE} | sed 's/\.[^\.]*$//'`
	ffmpeg -i ${FILENAME}.MTS -vcodec copy -acodec copy ${FILENAME}.mp4
done
