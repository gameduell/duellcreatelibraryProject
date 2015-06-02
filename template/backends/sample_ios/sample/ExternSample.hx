package sample;

import cpp.Lib;

/**
    Implementation of the class for iOS.
**/
class ExternSample
{
    private static var doOneThingNative = Lib.load("sample_ios", "do_one_thing_native", 1);

    public function new()
    {}

    public function doOneThing(): String
    {
        return doOneThingNative("here");
    }
}
