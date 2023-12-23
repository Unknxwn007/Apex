// main.cpp

#include <iostream>
#include "util/util.h" 

int main()
{
    SetConsoleTitle(L"Apex Installer");

    set_text_color(FOREGROUND_RED, "Welcome to the Apex installer!\n");



    std::cout << "Press any key to exit...";
    std::cin.get();
    return 0;
}