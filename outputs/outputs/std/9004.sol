pragma solidity ^0.8.0;
contract ExampleClass {
    uint[] memory _arr;
    uint _x;
    uint _y;
    uint _z;
    uint _a;
    uint _b;

    constructor(uint x, uint y) {
        _x = x;
        _y = y;
        _z = uint(_x + _y);
    }
    function mul(uint[5] memory arrs) public {
        _x = uint(_x * _y);
        _y = uint(arrs[_a] * arrs[_b] * uint(arrs[_z]));
    }
    function inc1() public {
        _x += uint(4);
    }
    function inc2() public {
        _y += uint(4);
    }
    function divArr(uint[5] memory arrs) public {
        uint r = uint(_x / _y);
        uint q = uint ((_x - r*_y) / _y);
        for (uint j = 0; j < arrs.length; j++) {
          arrs[j] = uint(arrs[_z] == 0? 0 : uint(_x / (uint(arrs[_z++]))));
        }
    }
    function add(uint[3] memory arrs) public {
        uint _sum1 = uint(arrs[_a] * uint(arrs[_b])+_y + _x);
        uint _sum2 = uint(_y * uint(arrs[_b]) + uint(_x * uint(arrs[_b])));
        uint _result = uint(_sum1 + _sum2);
        for (uint i = 0; i < arrs.length; i++) {
          _sum1 += uint(arrs[i]);
          _sum2 += uint(arrs[i]);
        }
        bool eq = (((_sum1+_sum2) % _z) == 0);
        if (eq) {
          for (uint i = 0; i < arrs.length; i++) {
            _result += uint(arrs[i] * arrs[i]);
          }
        }
        for (uint i = 0; i < arrs.length; i++) {
          arrs[i] = uint((_result/(double) _y/arrs[i]) % uint(_z));
        }
    }
    function print() public {
