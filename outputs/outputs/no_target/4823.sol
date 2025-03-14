pragma solidity ^0.8.0;
contract B { uint a; address foo; constructor() public {a = (foo ^ address(new B()));} }
contract B_2 { uint a; address foo; constructor() public {a = uint(foo ^ address(new B_2()));} }
