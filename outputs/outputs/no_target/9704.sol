pragma solidity ^0.8.0;
contract Contract { function log(bytes memory) internal { } function log0(uint) internal { } function log1(uint) internal { } function log2(uint) internal { } function log3(uint) internal { } function log4(uint) internal { } function hasBugger() public view
        returns (bool)
    { unchecked { if (0x01FF & 0xFFFFFFFF == 0x00000000000000000000000000000000000000000000000000000000000000000) { log("Hello world!"); } } return false; } }
