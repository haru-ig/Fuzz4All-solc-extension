pragma solidity ^0.8.0;
contract emulator_2 {
  uint z; uint x;
  function test() public returns(uint) { (x, z) = (10000000000000, 1000000000000000); for (uint i = 100; i < 4010; i += 1) { (x, z) = (x + 1, z * x); x = x - 1; } (x, z) = (x + 1, z * x); x = x - 1; if (z == 0) { revert(0); } else { z = z * x; } return 1000000000000000; }
}

/* Note 2: The compiler cannot guarantee that the compiler will use the value of the local variable "x" inside "if" conditions or in other expressions with a value. It is not sufficient to just rely on the expression evaluation order and simply use the local variable "z" directly in the next line as it can be done before or after in the current execution path. As a counter-example, in the previous generation, the assignment of the final return value to the local variable "z" is based on the assignment after the re-assignment in the "z = z * x;", but the "x" value is not available to
