pragma solidity ^0.8.0;
contract MutableDemo is IDemo
{
    uint256 immutable value1;
    uint256 immutable value2;
    function myFunction() external pure override view returns (uint256, uint256)
    {
        (uint256 value1, uint256 value2) = (0x416F736599920EC2158B, 0x7FE2AAFB00000000);
        return (value1, value2);
    }
    constructor()
    {
        value1 = 0x416F736599920EC2158B;
        value2 = 0x7FE2AAFB00000000;
    }
}
