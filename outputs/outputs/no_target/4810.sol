pragma solidity ^0.8.0;
contract B a B_2 { uint256 a; constructor() public {a = uint256(uint8(0x3)));}}
contract B_2 a B { uint256 a; constructor() public {a = uint256(uint8(0x3)));}}
contract X { uint b; constructor() public {b = uint(10);}}
contract Y is X { uint b; constructor() public {b = uint(20);}}
contract B_2a is Y { uint b; constructor() public {b = uint(uint256(10));}}
contract C is X, Y {}
contract D is X, Y {}
contract E is D, C {}
contract F is D, C {}
contract G is D, C {}
contract H is D, E {}
contract I is G, H {}
contract J is G, H {}
contract K is G, H {}
