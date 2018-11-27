#!/bin/sh
nohup jjs -J-Xmx256m -J-Dpe.pi.client.small.defaultPage=session.html -J-Djava.net.preferIPv4Stack=true -cp pipe-java-client-1.0.9-SNAPSHOT.jar webcam.js  > pipe.out &
#nohup java -Dpi.pe.client.debug=3 -Dpe.pi.client.small.defaultPage=fq.html -Djava.net.preferIPv4Stack=true -Xmx128m -jar pipe-java-client-1.0.9-SNAPSHOT.jar > pipe.out &
sleep 20
/home/pi/videorelay 47806 &
