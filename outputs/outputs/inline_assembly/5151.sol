pragma solidity ^0.8.0;
contract Y is C {
  bytes32 constant constantBytes32 = "19";
  C c = C(address(uint160(0)));
  constructor(address payable payee) public C(payee) {}


  function checkCounter(uint a) public view returns (uint) {
    uint c = c.checkCounter(a);
    assert(c == 10);
    return 10;
  }


  function mutatedCounter(uint b) public returns (uint) {
    return c.mutatedCounter(b + 10);
  }
}
