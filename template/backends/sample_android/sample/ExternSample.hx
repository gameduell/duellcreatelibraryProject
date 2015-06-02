package sample;

import hxjni.JNI;

/**
    Implementation of the class for Android.
**/
class ExternSample
{
    private static var doOneThingNative = JNI.createStaticMethod("com/test/ExternalInterface",
        "doOneThing", "(Ljava/lang/String;)Ljava/lang/String;");

    public function new()
    {}

    public function doOneThing(): String
    {
        return doOneThingNative("here");
    }
}
