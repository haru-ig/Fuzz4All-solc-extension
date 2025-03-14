pragma solidity ^0.8.0;
contract VersionOfOlder
{
    uint d;
     function doItWithOldVersion(string memory str) public {
     d += (bytes(str)[0]);
    }

     function doItWithOldSemanticVersion(string memory str) public {
     d += (bytes(str)[0]);
    }
}
