pragma solidity ^0.8.0;
contract Array{
  uint[5] memory z;
  function GetMax(uint[5] memory x) public view returns (uint max) {
    max = x[2];
  }
}
pragma solidity ^0.8.0;
