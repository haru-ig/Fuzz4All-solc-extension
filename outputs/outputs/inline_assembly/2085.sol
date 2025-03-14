pragma solidity ^0.8.0;
contract ComplexMutated
{
  mapping (uint => uint) public x;
  function set(uint id, uint v) public {
    x[id] = v;
  }
  function modify(uint id) public {
    x[id] = 0;
  }
}
