# node-open-cv
node.js server with an OpenCV wrapper, written through the OpenCV Java API.  The first goal is to get a node server reading a local image (on the server for now) and processing it through OpenCV's facial recognition libraries to obtain the bounding boxes containing faces.

### Requirements:
* OpenCV (currently included JAR and dynamic library file for Mac OSX, unsure if OpenCV compilation on local computer actually required or if this will currently work on other OS yet, untested) - http://opencv.org/
* Java JRE
* Node.js 
* node-java - https://github.com/joeferner/node-java
* (To compile Java portion, can use included node/jar file): JDK 7
* (To compile Java portion, can use included node/jar file): ant
* (...there may be others I'm missing, will update if so) 


### Current status:
You can enter the node folder and type `node nodeOpenCvTest.js` and if everything is set up correctly, you should see some test output from the openCV API:

```
$ node nodeOpenCvTest.js 
Welcome to OpenCV 2.4.10.0
OpenCV Mat: Mat [ 5*10*CV_8UC1, isCont=true, isSubmat=false, nativeObj=0x1009261a0, dataAddr=0x100926210 ]
OpenCV Mat data:
[0, 0, 0, 0, 0, 5, 0, 0, 0, 0;
  1, 1, 1, 1, 1, 5, 1, 1, 1, 1;
  0, 0, 0, 0, 0, 5, 0, 0, 0, 0;
  0, 0, 0, 0, 0, 5, 0, 0, 0, 0;
  0, 0, 0, 0, 0, 5, 0, 0, 0, 0]
Appears to be handling the above OpenCV Java correctly...
```

At the very least, we have gone end to end and are running openCV through node.js (via node-java).  Now it becomes possible to write logic to achieve the first goal.


#### Reference and requirement links (helped during research for this project):
* http://opencv.org/
* http://docs.opencv.org/modules/refman.html
* http://docs.opencv.org/doc/tutorials/introduction/desktop_java/java_dev_intro.html#build
* https://github.com/joeferner/node-java
* http://stackoverflow.com/questions/4729013/can-i-call-java-from-node-js-via-jni-and-how
* http://stackoverflow.com/questions/25242449/java-lang-noclassdeffounderror-at-runtime-when-using-express-framework-and-node
* http://computer-vision-talks.com/articles/2013-08-19-cloud-image-processing-using-opencv-and-node-js/
* http://code.tutsplus.com/tutorials/writing-nodejs-addons--cms-21771
* 
