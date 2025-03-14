pragma solidity ^0.8.0;
contract SemanticSimilar10{
  uint f1;
  function f() public returns (uint) {
    f1 = 0x80000000000001;
    uint a = fnF();
    uint b = 0x80000000000001;
    uint c = 0x80000000000001;
    b = fnF();
    eF();
    c = fnF();
    dF();
  }
}
