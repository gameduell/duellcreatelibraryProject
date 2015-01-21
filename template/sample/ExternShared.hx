package sample;

/**
    The logic of this class is distributed through the different backends, but shared for Android and iOS in this case.
**/
extern class ExternShared
{
    /**
        Does "one other thing" different in each platform, except in Android and iOS where it does the same.
    **/
    public static function doOneOtherThing(): Void;
}
