pragma solidity ^0.8.0;
contract EarlierVersionOfDifferent
{
    bytes32 x = keccak256(abi.encodePacked(x, x, x, x));
    uint y;
    uint z;
    constructor() { z = 1; y = 1; }
    function doIt() public {
        bytes32 x2;
        (x2, y) = keccak256(abi.encodePacked(x, y, z, x));
    }
}
