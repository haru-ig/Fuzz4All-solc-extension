pragma solidity ^0.8.0;
contract F {
  address[4] private _g;
  string[2] public g;
  function f() public {

    uint i=4;
    uint[] memory x=new uint[](i);

    x[2]=9;
    _g[1]=0x12345678;
    _g[2]=0x1234567891;
    x[i]=99;
    uint x_size=x.length;
    assembly {
      mstore(add(x, i), 999)
    }
  }
}
