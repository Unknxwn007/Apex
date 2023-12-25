using System;
using System.IO;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

using Ionic.Zip;

namespace src
{
    public class framework
    {
        static string appPath = Environment.CurrentDirectory;
        static string tempDir = Path.Combine(appPath, "temp"); // here we store information used by the launcher
        static string errorLog = Path.Combine(tempDir, "error_log.txt");

        static string appData = Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData);
        static string scriptFolder = Path.Combine(appData, "PopstarDevs\\2Take1Menu\\scripts");
        static string apexLib = Path.Combine(scriptFolder, "ApexLib");

        static string versionFile = Path.Combine(tempDir, "version.txt");

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

        public static void WriteColoredText(string text, ConsoleColor color, bool newLine)
        {
            Console.ForegroundColor = color;
            if (newLine) { Console.WriteLine(text + "\n\n"); } else { Console.Write(text); }
            Console.ForegroundColor = ConsoleColor.White;
        }

        public static void LogError(Exception ex)
        {
            string errorMessage = $"[{DateTime.Now}] Error: {ex.Message}";

            try
            {
                using (StreamWriter writer = new StreamWriter(errorLog)) { writer.Write(errorMessage + "\n"); }
            }
            catch (Exception exc) { WritePrefixText($"An error occurred while writing to the file: {exc.Message}", "err", true); }
        }

        public static void SetAppearance()
        {
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
        }

        public static void RunChecks()
        {
            // directories
            if (!Directory.Exists(tempDir)) { Directory.CreateDirectory(tempDir); }
            if (!Directory.Exists(Path.Combine(appData, "PopstarDevs"))) { WritePrefixText("2take1 is not installed!", "err", true); }
            if (!Directory.Exists(scriptFolder)) { WritePrefixText("2take1 has not yet injected!", "err", true); }

            // files
            if (!File.Exists(versionFile))
            {
                using (FileStream fs = new FileStream(Path.Combine(tempDir, "version.txt"), FileMode.Create, FileAccess.Write))
                {
                    byte[] contentBytes = Encoding.UTF8.GetBytes("princessbubblegum");
                    fs.Write(contentBytes, 0, contentBytes.Length);
                }
            }
        }

        static async Task<string> DownloadOnlineFileAsync(string url)
        {
            using (HttpClient client = new HttpClient())
            {
                try
                {
                    HttpResponseMessage response = await client.GetAsync(url);
                    response.EnsureSuccessStatusCode();
                    return await response.Content.ReadAsStringAsync();
                }
                catch (HttpRequestException) { return null; }
            }
        }

        public static async Task PerformUpdateCheck()
        {
            string url = "https://raw.githubusercontent.com/Unknxwn007/Apex/main/version.txt";
            string cloudVersion = await DownloadOnlineFileAsync(url);

            if (cloudVersion != null)
            {
                string localVersion = File.ReadAllText(versionFile);

                if (cloudVersion == localVersion)
                {
                    WritePrefixText("you are up to date!", "suc", true);
                }
                else
                {
                    WritePrefixText("version does not match!", "err", false);
                    WritePrefixText(" downloading latest..", "inf", true);
                }
            }
            else { WritePrefixText("Failed to download online content.", "err", true); }
        }

        public static void Download()
        {
            string apexLUA = "https://raw.githubusercontent.com/Unknxwn007/Apex/main/Apex.lua";
            string funcLUA = "https://raw.githubusercontent.com/Unknxwn007/Apex/main/ApexLib/uFunctions.lua";
            string tableLUA = "https://raw.githubusercontent.com/Unknxwn007/Apex/main/ApexLib/uTable.lua";
            string helpLUA = "https://raw.githubusercontent.com/Unknxwn007/Apex/main/ApexLib/helpers.lua";


            using (WebClient wc = new WebClient())
            {
                wc.Headers.Add("a", "a");
                try
                {
                    wc.DownloadFile(apexLUA, Path.Combine(scriptFolder, "Apex.lua"));
                    wc.DownloadFile(helpLUA, Path.Combine(apexLib, "helpers.lua"));
                    wc.DownloadFile(funcLUA, Path.Combine(apexLib, "uFunctions.lua"));
                    wc.DownloadFile(tableLUA, Path.Combine(apexLib, "uTable.lua"));
                }
                catch (Exception ex) { LogError(ex); }
            }
        }

        public static void InstallUninstall(bool uninstall)
        {
            if(!uninstall) 
            { 
                if (!Directory.Exists(apexLib)) { Download(); }
                WritePrefixText("Apex has been installed!", "suc", true);
            }
            else
            {
                try
                {
                    Directory.Delete(apexLib, true);
                    File.Delete(Path.Combine(scriptFolder, "Apex.lua"));
                    WritePrefixText("Apex has been removed!", "suc", true);
                } catch(Exception ex) { LogError(ex); }
            }
        }

        public static async Task RunSelector()
        {
            Console.WriteLine("1. Install  |  2. Uninstall  |  3. Check for Updates\n");
            int choice = Convert.ToInt32(Console.ReadLine());

            switch (choice)
            {
                case 1:
                    InstallUninstall(false);
                    break;
                case 2:
                    InstallUninstall(true);
                    break;
                case 3:
                    //await PerformUpdateCheck();
                    WritePrefixText("work in progress!", "inf", true);
                    await RunSelector();
                    break;
                default:
                    WritePrefixText("Invalid choice!", "err", true);
                    await RunSelector();
                    break;

            }
        }
    }
}