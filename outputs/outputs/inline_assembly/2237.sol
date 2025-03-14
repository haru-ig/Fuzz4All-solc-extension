pragma solidity ^0.8.0;
contract VersionOfOlder
{
    uint d;
    constructor() { d = 43; }
     function mutatedVersion() public returns (uint) {
     return 12 * 2 * d;
    }
}
