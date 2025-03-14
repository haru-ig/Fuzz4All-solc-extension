pragma solidity ^0.8.0;
contract VersionOfNewer
{
    uint d;
    constructor() { d = 43; }
     function doItWithNewerSemanticVersion() public returns (uint) {
     d = 1;
     return d;
    }
}
