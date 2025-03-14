pragma solidity ^0.8.0;
contract NewVersionOfOld
{
    constructor() public {}
    function doIt(uint x) public pure returns (uint y) {
        uint z = 53676663;
        y = z * 2;
    }
}
