pragma solidity ^0.8.0;
contract SemanticTest8 {
    uint[] public value1;
    uint[] public value2;
    uint[] public value3;

    constructor () public {
        for (uint i = 0; i < 10; i += 1) {
            uint j = i;
            if (j < value1.length) {
                value1[j] += 10;
            }
            if (j < value2.length) {
                value2[j] += 20;
            }
            if (j < value3.length) {
                value3[j] += 30;
            }
        }
    }
    function incrementValue(uint i) public {
        uint j = i;
        if (j < value1.length) {
            value1[j] += 10;
        }
        if (j < value2.length) {
            value2[j] += 20;
        }
        if (j < value3.length) {
            value3[j] += 30;
        }
    }
    function isOverflow1(uint i) public view returns (bool) {
        bool ret;
        if (i < value1.length) {
            ret = value1[i]!= 0;
        } else {
            ret = false;
        }
        return ret;
    }
}
contract SemanticTest9 {
    uint[] public value1;
    uint[] public value2;
    uint[] public value3;

    constructor () public {
        for (uint i = 0
