pragma solidity ^0.8.0;
contract MutatedVersionOfOld
{
    uint d;
    constructor() { d = 38; }
     function doItWithOldSemanticVersion() public returns (uint) {
     d += 10;
     d--;
     return 1 * 10 - d;
    }
}
