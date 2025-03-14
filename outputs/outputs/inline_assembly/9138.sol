pragma solidity ^0.8.0;
contract C{
    function getResult2(uint x, uint y) public view returns (uint) {
        uint _x = x * y;
        _x = x + _x + _x + _x + _x + (x << 20);
        _x = 0;
        return (_x);
    }
}
