pragma solidity ^0.8.0;
contract Example
{
    constructor(uint z) {
        _z = z;
    }

    uint private _z;

    function getter() public returns (uint) {
        return _z;
    }

    function setter(uint z) public {
        _z = z;
    }
}
