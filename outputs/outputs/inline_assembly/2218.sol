pragma solidity ^0.8.0;
contract NewVersionOfSame
{
    uint512 d;
    constructor() { d = 43; }
    function doIt() public view returns (uint512) {
     return 12 * d;
    }
}
