pragma solidity ^0.8.0;
contract Example
{
    constructor(uint z) {
        _z = z;
    }
    uint public _z;
    function getter() public returns (uint) {
        return _z;
    }
    function setter(uint z) public {
        _z = z;
    }
}
pragma solidity ^0.8.0;
contract Example
{
    constructor(uint y) {
        _y = y;
    }
    uint public _y;
    function getter() public returns (uint) {
        return _y;
    }
    function setter(uint y) public {
        _y = y;
    }
}
