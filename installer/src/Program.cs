using System;
using System.Threading.Tasks;

namespace apex_installer
{
    internal class Program
    {
        static async Task Main()
        {
            framework.DoStartup();

            // introduction
            framework.WriteColoredText("Welcome to the Apex installer ", ConsoleColor.White, false);
            framework.WriteColoredText(Environment.UserName, ConsoleColor.Blue, true);

            // install / uninstall / update
            await framework.RunSelector();

            Console.ReadKey();
        }
    }
}