using System;
using System.IO;
using System.Net.Http;
using System.Threading.Tasks;
using System.IO.Compression;
using System.Threading;

namespace apex_installer
{
    public class framework
    {
        public static void WritePrefixText(string text, string prefix, bool newLine)
        {
            switch (prefix)
            {
                case "suc":
                    Console.ForegroundColor = ConsoleColor.Green;//Color.LightGreen;
                    Console.Write("[suc] ");
                    break;
                case "err":
                    Console.ForegroundColor = ConsoleColor.Red;//.IndianRed;
                    Console.Write("[err] ");
                    break;
                case "inf":
                    Console.ForegroundColor = ConsoleColor.Blue;//.LightSkyBlue;
                    Console.Write("[inf] ");
                    break;
            }

            Console.ForegroundColor = ConsoleColor.White;// Color.White;
            if (newLine) { Console.WriteLine(text); } else { Console.Write(text); }
        }

        // this needs to be improved, but does not matter right now.
        public static void WriteColoredText(string text, ConsoleColor color, bool newLine)
        {
            Console.ForegroundColor = color;
            if (newLine) { Console.WriteLine(text + "\n\n"); } else { Console.Write(text); }
            Console.ForegroundColor = ConsoleColor.White;
        }

        public static void LogError(Exception ex)
        {
            string errorMessage = $"[{DateTime.Now}] Error: {ex.Message}";

            try { using (StreamWriter writer = new StreamWriter(directories.errorLog)) { writer.Write(errorMessage + "\n"); } }
            catch (Exception exc) { WritePrefixText($"An error occurred while writing to the file: {exc.Message}", "err", true); }

            WritePrefixText(ex.Message, "err", false);
        }


        public static void DoStartup()
        {
            /*      Appearance      */
            Console.Title = "Apex Installer";
            string text = @"                  
     /\                    
    /  \   _ __   _____  __
   / /\ \ | '_ \ / _ \ \/ /
  / ____ \| |_) |  __/>  < 
 /_/    \_\ .__/ \___/_/\_\
          | |              
          |_|              
";
            WriteColoredText(text, ConsoleColor.Red, true);

            /*      Checks      */
            if (!Directory.Exists(directories.twotakeoneFolder)) { WritePrefixText("2take1 is not installed!", "err", true); } // 2take1 launcher not yet started
            if (!Directory.Exists(directories.scriptFolder)) { WritePrefixText("2take1 has not yet injected!", "err", true); } // 2take1 not yet injected
        }

        public static async Task Download()
        {
            string downloadLink = "https://raw.githubusercontent.com/Unknxwn007/Apex/release/Apex.zip";
            string downloadPath = Path.Combine(directories.scriptFolder, "Apex.zip");

            using (HttpClient client = new HttpClient())
            {
                try
                {
                    byte[] fileData = await client.GetByteArrayAsync(downloadLink);
                    await Task.Run(() => File.WriteAllBytes(downloadPath, fileData));

                    ZipFile.ExtractToDirectory(downloadPath, directories.scriptFolder);
                    File.Delete(downloadPath);
                }
                catch (Exception ex) { LogError(ex); }
            }
        }

        public static async Task InstallUninstall(bool uninstall)
        {
            if(!uninstall) 
            {
                if (Directory.Exists(directories.apexFolder) && File.Exists(directories.apexFile))
                {
                    Directory.Delete(directories.apexFolder);
                    File.Delete(directories.apexFile);
                }

                await Download();

                WritePrefixText("Apex has been installed!", "suc", true);
            }
            else
            {
                try
                {
                    Directory.Delete(Path.Combine(directories.scriptFolder, "lib\\ApexLib"), true);
                    File.Delete(Path.Combine(directories.scriptFolder, "Apex.lua"));
                    WritePrefixText("Apex has been removed!", "suc", true);
                } catch(Exception ex) { LogError(ex); }
            }
        }

        public static async Task RunSelector()
        {
            Console.WriteLine("1. (Re)Install  |  2. Uninstall | 3. Help\n");
            int choice = Convert.ToInt32(Console.ReadLine());

            switch (choice)
            {
                case 1:
                    await InstallUninstall(false);
                    break;
                case 2:
                    await InstallUninstall(true);
                    break;
                case 3:

                    break;
                default:
                    WritePrefixText("Invalid choice!", "err", true);
                    await RunSelector();
                    break;

            }
        }
    }
}