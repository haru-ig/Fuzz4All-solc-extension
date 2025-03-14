pragma solidity ^0.8.0;
contract C {
  uint public counter = 10;
  constructor() public { }
  function checkCounter() public view returns (uint) {
    return counter;
  }
}


pragma solidity ^0.8.0;
contract C {
  struct S {
    uint x;
    constructor (uint _x) public { x = _x; }
  }
  bytes32 public _m1;
  uint public _m2;
  address payable to;
  constructor (address payable payee) public {
    to = payee;
    _m1 = "111";
    _m2 = "222";
  }
  function checkM1() public view returns (bytes32 m1) {
    return _m1;
  }
  function checkM2() public view returns (uint m2) {
    return _m2;
  }
  function mutatedM1() public view returns (uint m1, bytes32 oldM1) {
    m1 = counter + counter + counter + counter;
    oldM1 = _m1;
    counter++;
  }
  function mutatedM2() public view returns (uint m1, uint oldM2) {
    m1 = counter + counter + counter + counter;
    oldM2 = _m2;
    counter++;
  }
  function toEther(uint _value) public view returns (uint _convertedValue) {
    _convertedValue = _value / 1 ether;
  }
}
