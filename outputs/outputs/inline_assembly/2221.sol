pragma solidity ^0.8.0;
contract VersionOfEarlier
{
    uint d;
    uint e;

    constructor () public { (e, d) = (e, d); }

    function doItWithOldVersion() public returns (uint) {
     return d;
    }

    function returnOldResult() public view returns (uint) {
     if (e == 1) { return d; } return e;
     }
}
