pragma solidity ^0.8.0;
contract F {
  bytes[1][1] private _g;
  string[2] public g;
  uint i=17;
  constructor() public {
    uint[] memory x=new uint[](i);
    _g[1]=[11111];
    x[1]=99;
    x[2]=55;
    uint x1_size=x.length;
    uint x_size=x.length;
    assembly {
      mstore(add(x, 4), 9000000000000000)
    }
  }
}
