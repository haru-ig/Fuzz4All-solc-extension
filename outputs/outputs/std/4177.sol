pragma solidity ^0.8.0;
contract Array{
  uint x;
  function GetMax(uint[10] memory x) public view returns (uint) {
    return x[3];
  }
}
contract Array{
  function GetMin(uint[10] memory x) public view returns (uint min) {
    return x[0];
  }
}
