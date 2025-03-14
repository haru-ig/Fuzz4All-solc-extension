pragma solidity ^0.8.0;
contract Array{
    uint[] public x;
    function GetMax(uint[5] memory x) external view returns (uint max) {
      max = x[2];
    }
}
