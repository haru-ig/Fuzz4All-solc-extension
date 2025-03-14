pragma solidity ^0.8.0;
contract VersionOfYounger
{
    uint d;
    constructor() { d = 43; }
     function doItWithOldSemanticVersion() public view returns (uint) {
     return 12 * 2 * d;
    }
}
