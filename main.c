#include <windows.h>
#include <stdio.h>



int main(int argc, char *argv[])
{ 
   ShellExecuteA(NULL, "open", "C:\\Windows\\System32\\calc.exe", NULL, NULL, SW_SHOW);


 

    return 0;   
}