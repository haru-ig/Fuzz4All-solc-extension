pragma solidity ^0.8.0;
contract F {
  bytes[1][1] private _g;
  string[2] public g;
  function f() public {
    uint i=4;
    uint[] memory x=new uint[](i);
    x[2]=9;
    x[i]=99;
    uint x_size=x.length;
    assembly {
      mstore(add(x, i), 999)
    }
  }
}
