pragma solidity ^0.8.0;
contract G {
  mapping(address => uint) private _balances;
  function add() public {
    uint a=4;
    uint[a,7] memory x=new uint[](a);
    x[2]<x[6]=false;
    uint g=999;
    assembly {
      mstore(x, 2560)
      g := 7-8-g
    }
  }
}
