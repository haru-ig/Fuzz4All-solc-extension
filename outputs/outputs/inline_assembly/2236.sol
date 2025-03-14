pragma solidity ^0.8.0;
contract VersionOfNewer
{
    uint d;
    constructor() { d = 43; }
     function doItWithNewerSemanticVersion() public returns (uint) {
     d *= 2;
     uint x = d;
     x *= 50;
     return x;
    }
}


pragma solidity ^0.8.0;
contract VersionOfNewer
{
    uint d;
    constructor() { d = 43; }
     function doItWithNewerSemanticVersion() public returns (uint) {
     d *= 2;
     uint x = doIt();
     x *= 50;
     return x;
    }
    function doIt() public returns (uint) {
     d++;
     return 12 * d;
    }
}
