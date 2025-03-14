pragma solidity ^0.8.0;
contract B6 { function f() public pure { uint x = 0x7fffffffffffff; assert (x * uint(-1) <= x && x / uint(-1) >= x); } }
contract B7 { function f() public pure { uint64 x = 0x7fffffffffffffff; assert (x * uint(-1) <= x && x / uint(-1) >= x); } }
