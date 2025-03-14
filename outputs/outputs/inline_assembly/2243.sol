pragma solidity ^0.8.0;
contract NewerSemanticVersion
{
     uint d;
     constructor() { d = 1; }
     function doItWithNewerSemanticVersion() public returns (uint) {
        d += 2;
        d *= 2;
        return 12 * 2 * d;
     }
}
contract MutatedVersionOfNewer2
{
     uint d;
     constructor() { d = 2; }
     function doItWithNewerSemanticVersion() public returns (uint) {
        uint y =12 * 2;
        y *= d;
        return (y/2) + 4;
     }
}
