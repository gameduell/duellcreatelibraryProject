package test;

import sample.Common;
import sample.ExternSample;
import sample.ExternShared;
import unittest.TestCase;

class SampleUnitTest extends TestCase
{
    public function testSetupIsWorking()
    {
        new Common();
        new ExternSample().doOneThing();
        ExternShared.doOneOtherThing();

        assertTrue(true);
    }
}
