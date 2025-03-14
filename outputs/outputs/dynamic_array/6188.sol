pragma solidity ^0.8.0;
  struct S {
   mapping(uint256 => uint256) a;
   mapping(address => uint256) b;
  }
  I foo() private returns(uint256 c);
