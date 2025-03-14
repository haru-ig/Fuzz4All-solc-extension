pragma solidity ^0.8.0;
contract ModdingContract{
  uint[2] private x;
  function Modding(uint a) public {
    Modify(x,a,0);
  }
  function Modify(uint[SIZE] memory x, uint newValue,uint i) public pure {
      x[i] *= newValue;
  }
}
