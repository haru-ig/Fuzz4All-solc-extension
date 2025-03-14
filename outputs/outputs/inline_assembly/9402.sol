pragma solidity ^0.8.0;
contract M {
  int i;
  mapping(address => bool) public map;
  constructor(int _i) public {
    i = _i;
  }
}
contract M is M {
}
contract M2 is M {

 constructor(int _i) public {
    map[msg.sender] = 1;
  }
}
