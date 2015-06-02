package sample;

/**
    The logic of this class is distributed through the different backends.
**/
extern class ExternSample
{
    public function new();

    /**
        Does "one thing" different in each platform.
    **/
    public function doOneThing(): String;
}
