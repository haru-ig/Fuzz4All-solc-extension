pragma solidity ^0.8.0;
contract M {
  int i;
  constructor(int _i) public {
    i = _i;
  }
  mapping(address => address) private mapping;
}

pragma solidity ^0.8.0;
contract M {
    mapping(address => int) public map;
  event Insert(address indexed _addr, int _value);
  constructor(int _i) public {
   map[msg.sender] = _i;
   Insert(msg.sender, _i);
  }
}
