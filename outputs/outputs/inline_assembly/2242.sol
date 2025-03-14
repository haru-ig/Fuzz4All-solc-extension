pragma solidity ^0.8.0;
contract MutatedVersionOfOrcScout
{
     uint d;
     constructor() { d = 96; }
     function doItWithOrcScoutSemanticVersion() public returns (uint) {
         d += 6;
        d *= 10;
        return 24 * d;
     }
}
