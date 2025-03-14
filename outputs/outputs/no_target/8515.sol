pragma solidity ^0.8.0;

contract Mutator {
    uint public value;
    uint[16] public a;

    constructor(uint[5] memory _value, uint16 _a) public {
        for (uint i = 0; i < 5; i++) {
            a[i] = _value[i];
        }
        value = _a;
    }

    function set(uint[9] memory a9) public {
        for (uint i = 0; i < 9; i++) {
            a[16+i] = a9[i];
        }
        value = a9[15];

    }

    function setu(uint128 _a) public {
        for (uint i = 0; i < 128; i++) {
            value += a666[i];
        }
    }

    function setun(uint128 _a) public {
        unchecked{
            for (uint i = 0; i < 128; i++) {
                value += a56[i];
            }
        }
    }

    function seta(uint _a) public {
        uint[3] memory a1 = [ _a, 0, 0];
        uint[32] memory a2 = [ 0, 1, _a, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
        for (uint i = 0; i < 8; i++) {
            a[16+i] = a1[i];
        }
        for (uint i = 8; i < 16; i++) {
            a[4 + i] = a2[i];
        }
    }
}
