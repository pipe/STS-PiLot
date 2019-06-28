#!/bin/sh
nohup jjs -J-Xmx256m -J-Dpe.pi.client.small.defaultPage=session.html -J-Djava.net.preferIPv4Stack=true -cp pipe-java-client-current.jar webcam/headless.js  > pipe.out &
sleep 5
(cd STS-PiLot; python3 app.py > ../sts.out &)

