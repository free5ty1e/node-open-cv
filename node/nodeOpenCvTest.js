var java = require("java");
java.classpath.push("commons-lang3-3.1.jar");
java.classpath.push("commons-io.jar");
java.classpath.push("SimpleSample.jar");
java.classpath.push("opencv-2410.jar");
java.classpath.push("libopencv_java2410.dylib");
var SimpleSample = java.import("SimpleSample");
java.callStaticMethodSync("SimpleSample", "main");
console.log("Appears to be handling the above OpenCV Java correctly...");
