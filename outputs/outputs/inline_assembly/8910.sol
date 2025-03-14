pragma solidity ^0.8.0;
contract BetterBad
{
    uint internal x;
    event log0(uint256 _x);
    constructor() public
    {
        x = 4294967290;
    }
    function set(uint256 _x) public {
        x = _x;
        log0(_x);
    }
    function show(uint256 _y) public
    {
        uint256 z = x + x + x + x + x + x + x + x + x;
        log0(z);
        log0(z + 1);
        log0(z + 2);
        log0(z + 3);
        log0(z + 4);
        log0(z + 5);
        log0(z + 6);
        log0(z + 7);
    }
}
