pragma solidity ^0.8.0;
contract P11{
  uint public x;
  function f() internal returns(uint, address) { return (x, msg.sender); }
}
contract P12{
  address public x;
  function f() internal returns (uint, bytes memory) { return (x, "hi"); }
}
