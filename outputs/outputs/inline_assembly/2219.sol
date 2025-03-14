pragma solidity ^0.8.0;
contract VersionOfOlder
{
    uint d;
    function doItWithOldVersion() public returns (uint) {
     return d;
    }
}

pragma solidity ^0.8.0;
contract SemanticDifferent
{
    uint d;
    constructor() { d = 43; }
     function doItWithOldSemanticVersion() public returns (uint) {
     return 12 * d;
    }
}
