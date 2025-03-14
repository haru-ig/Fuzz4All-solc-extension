pragma solidity ^0.8.0;
contract A {
  uint max;
  uint public x;
  constructor() public {
    max = L.max;
  }
  function setX(uint _x, uint _y) public returns(uint) {
    x = _x;
    max = max > _x? max : _x;
    return (x > _y? x : _y);
  }
  function getX() public view returns(uint) {
    return x;
  }
}
