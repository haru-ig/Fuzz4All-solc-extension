pragma solidity ^0.8.0;
contract Array{
    uint[10] public x;
    function GetMax(uint[5] memory x) public returns (uint max) {
      max = x[2];
      x[2] = 12;
      x[3] = 3;
      x[4] = 2;
      x[5] = 9;
      x[6] = 5;
      x[7] = 14;
      x[8] = 2;
      x[9] = 3;
    }
}
