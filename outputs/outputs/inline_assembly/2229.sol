pragma solidity ^0.8.0;

 contract VersionOfOlder
{
    uint d;
    constructor() { d = 43; }

    function doItWithOldSemanticVersion() public returns (uint) {
        d = d * 100;
        byte[] memory b = abi.encodePacked(d);
        return 12 * 2 * bytes8(00, 0x8a, 0x13);
    }
}

pragma solidity ^0.8.0;
contract SimpleVersionOfYoungContract
{
    uint[] youngerAddress;
   constructor() public
   {
        youngerAddress.push(new VersionOfYounger().address);
   }

}
