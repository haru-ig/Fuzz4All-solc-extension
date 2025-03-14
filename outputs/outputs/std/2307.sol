pragma solidity ^0.8.0;

contract Mods {
    function sub(uint _x, uint _y, uint p) internal pure returns (uint) {
        if (_y == 0 || p == 0) {
            return _x;
        }
        return (subtract(_x, multiply(_x, _y) % p));
    }

    function multiply(uint _x, uint _y) internal pure returns (uint) {
        if (_y == 0) return 0;
        uint q = _x / _y;
        return add(multiply(q, q), multiply(_x % _y, _y) % p);
    }

    function add(uint _x, uint _y) internal pure returns (uint) {
        uint z = _x + _y;
        if (z < _x) {
            return z + add(add(z, _x), p);
        } else {
            return z;
        }
    }
}
