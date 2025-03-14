pragma solidity ^0.8.0;
contract MultilineComment {
    string public name;

    constructor(string memory _name) {
        name = _name;
    }
}
contract Array {
    uint public length;
    uint public sum;
    uint[5] public values;
    uint[2] public result;
    uint[2] memory b;
    uint[] private e;
    uint constant arraysize = 8;
    constructor(){
        length = arraysize;

        sum = constant1;
        for (uint i = 0; i < length; ++i) {
            values[i] = 10 + i;
            if (i == 1) {
                sum = sum - 1;
            }
        }
        for (uint j = 0; j < length; ++j) {
            uint arrayindex = j;
            result.length += 1;
            result[result.length - 1] = values[arrayindex];
        }
    }
    function print() public {
        for (uint i = 0; i < length; ++i) {
            values[i] = values[i];
        }
        for (uint j = 0; j < length; ++j) {
            values[j] = 11 + j;
        }
        for (uint k = 0; k < length; ++k) {
            values[k] = 21 + k;
        }
        length = (17 - ((13 + 2) / 2)) + (27 + (7 + 0) / 2);
    }
    function findmin() public {
        uint f = 429496;

        for (int i = 0; i < length; i++) {
            if (values[i] < f) f = values[i];
        }
        return f;
        }
    function findmax() public {
        uint f = 0xffffffffffffffff;
        for (int i = 0; i < length; i++) {
            if (values[i] > f) f = values[i];
        }
        return f;
    }
    function sum2() public {
        return sum;
    }
    function sum3() public {
        return sum;
    }
}
