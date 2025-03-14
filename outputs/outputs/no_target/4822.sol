pragma solidity ^0.8.0;
contract A { uint a; constructor() public {a = uint(uint8(0x1));} }
contract A_2 { uint a; constructor() public {a = uint(uint8(0x7));} }
contract A_3 { uint a; constructor() public {a = uint(uint8(1));} }
contract G { function a() public {a = uint(uint8(0xFC89B2AC));} }
contract G_2 { function a() public {a = uint(uint8(0xFC89B2AD));} }
