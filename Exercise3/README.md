Exercise:3

Q1:Generic Makefile creation with mutiple source directories,implemented for following source structure
1. 2 source file directories containing common modules (with .c and .h files)
     - Makefile should not change when new files are added in the directories. 
2. Source file containing main function outside common modules
- Makefile control 1 MACRO definition (Enable / Disable "DECORATE" macro and see the diff in results)
- Makefile generate output Executable in "out" directory and object files in "build" directory
- Makefile have clean function to delete build output and temporary files

Q2:Without changing makefile
1. Added samplDivide.c in "commonMod2" directory for divison operation similar to sampleMultiply.c, 
2. changed app to call function from sampleDivide.c
  
