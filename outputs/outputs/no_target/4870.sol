pragma solidity ^0.8.0;
contract C { function f() public pure { require (0xffffffff > 0x7ffffffe); } }

pragma solidity ^0.8.0;
contract D { function f() public pure { require (0xffffffff == 0xffffffff); } }
