pragma solidity ^0.8.0;
contract NewVersionOfSame1
{
    constructor() public {}
    function doIt() public pure returns (uint y) {
        uint x = 315;
        x = 23;
        y = x * x;
        (x, y) = (y, x);
    }
}
