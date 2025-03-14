pragma solidity ^0.8.0;
contract Solidity
{
    uint128 public array;
    uint1 public bytesA;
    constructor() public
    {
        bytesA = 7;
        array = bytesA - 9223372036854775807;
    }
}
