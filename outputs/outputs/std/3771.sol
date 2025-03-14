pragma solidity ^0.8.0;
contract Array {
    uint[] a;
    constructor(uint _i) internal {
        a[_i] = _i;
    }

    function min(uint x, uint y) internal pure returns (uint) {
        return x < y? x : y;
    }
    function max(uint x, uint y) internal pure returns (uint) {
        return x > y? x : y;
    }
    function sum(uint[] memory a) internal pure returns (uint) {
        uint _sum;
        for (uint i = 0; i < a.length; i++) {
            _sum += a[i];
        }
        return _sum;
    }
    function set(uint[2] memory a, uint _i, uint _value) internal {
        a[_i] = _value;
    }
    function get(uint[] memory a, uint _i) internal view returns (uint) {
        return a[_i];
    }
    function sort(uint[] memory a) internal {
        uint t;
        uint i, j;
        for (i = 0; i < a.length; ++i) {
            t = min(a[i], a[i + 1]);
            a[i + 1] = a[i];
            a[i] = t;
        }
    }
}
