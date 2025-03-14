pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutated
{
    uint32 x;
    constructor(uint32 n) {
        x = n;
    }
}
contract Mutated
{
    function run() public pure {
      uint32 _x = 2;
      Mutated _m = new Mutated(_x);
      uint32 _y = 1;
      uint32 _z = 1;
    }
}
