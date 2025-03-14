pragma solidity ^0.8.0;
contract Example
{
    constructor(uint8 y, uint z, uint x)
    {
        _y = y;
        _z = z;
        _x = x;
    }
    uint private _y;
    uint private _z;
    uint private _x;
    function getter() public returns (uint) {
        return _y;
    }
    function setter(uint y, uint z, uint x) public {
        _y = y;
        _z = z;
        _x = x;
    }
}
