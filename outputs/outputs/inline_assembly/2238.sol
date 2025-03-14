pragma solidity ^0.8.0;
contract MutatedVersionOfNewer
{
     uint d;
     constructor() { d = 97; }
     function doItWithNewerSemanticVersion() public returns (uint) {
         d += 6;
        d *= 2;
        return 12 * 2 * d;
     }
}
