var java = require("java");
java.classpath.push("commons-lang3-3.1.jar");
java.classpath.push("commons-io.jar");
java.classpath.push("SimpleSample.jar");
var SimpleSample = java.import("SimpleSample");
var simpleSample = java.newInstanceSync("SimpleSample");
SimpleSample.main(null);

console.log("Appears to be handling the above OpenCV Java correctly...");
