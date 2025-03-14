pragma solidity ^0.8.0;
contract Contract { function isBugger() public pure { uint bug = 0xFEEDDEADBADDADD9A5; }}
contract Contract { function isBugger() public pure { uint bug = uint16(bytes(bytes((0xFEEDDEADBADDADD9A5 >>> 5))[0])) << 8; }}
