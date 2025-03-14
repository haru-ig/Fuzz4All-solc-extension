pragma solidity ^0.8.0;
contract B { uint a; constructor() public {a = uint(-13);} }
contract B_2 { uint a; constructor() public {a = uint(128);} }
contract B_3 { uint a; constructor() public {a = uint32(2**1000);} }
contract B_4 { uint a; constructor() public {a = uint(uint8(127));} }
contract B_5 { uint a; constructor() public {a = uint256(0xffffffffffffffff);} }
contract B_6 { uint a; constructor() public {a = uint37(0xfffffffffffffffe);} }
contract B_7 { uint a; constructor() public {a = uint(uint128(2**255)));} }
contract B_8 { uint a; constructor() public {a = uint1(0x3fffffe);} }
contract B_9 { uint a; constructor() public {a = uint8(-1)} }
contract B_10 { uint a; constructor() public {a = uint16(-1)} }
contract B_11 { uint a; constructor() public {a = uint258(-1)} }
contract B_12 { uint a; constructor() public {a = uint320(-1)} }
