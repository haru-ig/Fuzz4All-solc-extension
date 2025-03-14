pragma solidity ^0.8.0;
contract C {
  uint public a;
  uint public b;
  uint public c;

  constructor(uint _a, uint _b) public {
    a = uint(_a);
    b = uint(_b);
    c = a+b-b+a-a;
  }


  function setMyUint(uint _newMyUint) public {
    uint memory newMemeory = b + _newMyUint + c + a;
  }


  function getMyUint() view public returns(uint) {
    return c + a - c;
  }
}
