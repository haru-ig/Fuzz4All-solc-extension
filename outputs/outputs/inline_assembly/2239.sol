pragma solidity ^0.8.0;
contract VersionOfOld
{
    uint d;
    constructor() { d = 43; }
    function doItWithoutNewerSemanticVersion() public returns (uint) {
     address account = msg.sender;
     account.transfer(84);
    }
}
