pragma solidity ^0.8.0;
contract Caller {
  function setFallback() public {
    BreadMilkExample b;
    uint i;
    i = b.modify(37);
  }
}
