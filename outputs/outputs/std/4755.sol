pragma solidity ^0.8.0;
contract F {
  mapping (bytes[1][1] storage _g) public g;
  function f() public storage {
    uint i=4;
    uint[] memory x=new uint[](i);
    x[2]=9;
    x[i]=99;
    uint x_size=x.length;
    assembly {
      mstore(add(x, i), 21)
    }
  }
}
