pragma solidity ^0.8.0;
contract P4{
  uint32 public p4;
  event E4(uint x);
  function h4(uint x) public returns (uint) {
    p4 %= x;
    emit E4(p4);
    if (p4>x) { revert();}
    return p4;
  }
}
