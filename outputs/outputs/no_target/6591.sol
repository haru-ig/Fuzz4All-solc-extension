pragma solidity ^0.8.0;
contract myContractWM
{
    function f(uint8x8 _x) returns (uint256) {
        return _x % 256;
    }
    function g() public view returns (uint8x8) {
        uint8x8 _x;
        uint _y;
        uint _z;
        _y = f(0x1000000000000000000000000000000000000);
        uint _w;
        _w = 0x100000000000000000000000000000000000;
        _z = _w;
        _x = _z * _y;
        _z -= _x;
        return _x;
    }
}
