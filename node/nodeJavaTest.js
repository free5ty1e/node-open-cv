var java = require("java");
java.classpath.push("commons-lang3-3.1.jar");
java.classpath.push("commons-io.jar");

var list = java.newInstanceSync("java.util.ArrayList");

java.newInstance("java.util.ArrayList", function(err, list) {
    list.addSync("item1");
    list.addSync("item2");
});

var ArrayList = java.import('java.util.ArrayList');
var list = new ArrayList();
list.addSync('item1');
var charArray = java.newArray("char", "hello world\n".split(''));

var javaLong = java.newInstanceSync("java.lang.Long", 5);
console.log('Possibly truncated long value: ' + javaLong);
console.log('Original long value (as a string): ' + javaLong.longValue);
//java.callStaticMethodSync("Test", "staticMethodThatTakesALong", javaLong);

//try {
//    java.methodThatThrowsExceptionSync();
//} catch(ex) {
//    console.log(ex.cause.getMessageSync());
//}

//java.asyncOptions = {
//    promiseSuffix: "Promise",
//    promisify: require("when/node").lift
//};
//java.import("java.util.ArrayList"); // see NOTE below
//java.newInstancePromise("java.util.ArrayList")
//    .then(function(list) { return list.addPromise("item1"); })
//    .then(function(list) { return list.addPromise("item2"); })
//    .catch(function(err) { /* handle error */ });

//var byteArray = java.newArray(
//    "byte",
//    "hello world\n"
//    .split('')
//    .map(function(c) { return java.newByte(str.charCodeAt(c));}));
//console.log("byteArray = " + byteArray);
console.log("Appears to be handling the above Java correctly...");
