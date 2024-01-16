using System;
using System.IO;

namespace apex_installer
{
    public static class directories
    {
        public static string appData = Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData);

        public static string errorLog = Path.Combine(Environment.CurrentDirectory, "error_log.txt");

        public static string twotakeoneFolder = Path.Combine(appData, "PopstarDevs");
        public static string scriptFolder = Path.Combine(appData, "PopstarDevs\\2Take1Menu\\scripts");

        public static string apexFolder = Path.Combine(scriptFolder, "lib\\ApexLib");
        public static string apexFile = Path.Combine(scriptFolder, "Apex.lua");
    }
}