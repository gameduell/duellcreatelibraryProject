package duell.create;

import duell.defines.DuellDefines;
import duell.objects.DuellLib;
import duell.helpers.TemplateHelper;
import duell.helpers.CreationHelper;
import sys.FileSystem;
import haxe.io.Path;

class PluginCreate
{
    public function new()
    {}

    public function run(): String
    {
        if (FileSystem.exists(Path.join([Sys.getCwd(), DuellDefines.LIB_CONFIG_FILENAME])))
        {
            throw "Folder already has a " + DuellDefines.LIB_CONFIG_FILENAME;
        }

        var path = CreationHelper.getProjectFolder("libraryProject");
        TemplateHelper.recursiveCopyTemplatedFiles(Path.join([DuellLib.getDuellLib("duellcreatelibraryProject").getPath(), "template"]), path, null, null);

        return "success";
    }
}
