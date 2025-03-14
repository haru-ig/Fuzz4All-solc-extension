pragma solidity ^0.8.0;
contract A {
  bytes[1][1] private _g;
  bytes[1][1] public g;
  function A() public {
    uint[] memory x=new uint[](10);
    x[2]=9;
    x[1]=99;
    uint x_size=x.length;
    assembly {
      mstore(add(x, i), 123)
    }
  }
}




pragma solidity 0.8.0;
