pragma solidity ^0.8.0;
contract emulator8 {
  uint y; uint x=10000000000000; uint z;
  function test() public returns(uint) { uint y = 10000000000000; uint x = 10000000000000; for (uint i = 0; i < 100000; i ++) { y = y * x; } z = y * x; return 0; }
}
/* You may notice that if the input values used to initialize the loop variables were outside of the for loop, then a value
change within the loop caused an undesired behavior of the loop; i.e. no loop iterations were being executed.

Consequently, we can use the assembly language to execute the loop, using a variable which does not change within the loop.
This method also makes the generated code more compact and efficient than loops which check if the variable has changed and only use it within that case.

To illustrate, the following code shows a loop with three variables changed during the iteration of the loop and a comparison between these variables.

Note that the assembly language is not allowed to use variables which are reinitialised or changed beyond the loop's end;
e.g. in the following code, no loop will be executed for 5 iterations to check if x changes from 10 to 100 for instance.

Please provide assembly sources and compiled binaries for the following tests:
- 1. Program: (y <= 100000) for (x <= 10,000,000) {if x <= 100000, y += x;}
- 2. Program: (y <= 100000) for (x = 100000000) {if x <= 100000, y += x;}
- 3. Program: (y <= 100000) for (x <= 10,000,000, x+1) {if x <= 100000; y += x;}
- 4. Program: (y <= 100000) for (x = 100000000; x <= 10000000000; x +=
