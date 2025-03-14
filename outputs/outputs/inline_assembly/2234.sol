pragma solidity ^0.8.0;
contract VersionOfNewer
{
    uint d;
    constructor() { d = 43; }
     function doItWithNewerSemanticVersion() public returns (uint) {
     d *= 2;
     return 12 * 2 * d;
    }
}
