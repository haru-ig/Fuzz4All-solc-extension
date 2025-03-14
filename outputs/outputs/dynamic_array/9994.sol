pragma solidity ^0.8.0;
contract SemanticTest10 {
    uint[] public value;
    uint[] public value2;
    uint[] public value3;
    uint[] public newvalue;
    constructor () public {
        newvalue.length;
        for (uint i = 0; i < (value.length - 1); i += 2) {
            newvalue[i] = value[i + 1];
            newvalue[i + 1] = value[i + 2];
            newvalue[i + 2] = value[i + 3];
        }
        for (uint i = 0; i < (value2.length - 1); i += 2) {
            newvalue[i] = value2[i + 1];
            newvalue[i + 1] = value2[i + 2];
            newvalue[i + 2] = value2[i + 3];
        }
        for (uint i = 0; i < (value3.length - 1); i += 2) {
            newvalue[i] = value3[i + 1];
            newvalue[i + 1] = value3[i + 2];
            newvalue[i + 2] = value3[i + 3];
        }
    }
    function isOverflow(uint i) public view returns (bool) {
        bool ret;
        if (i < value.length) {
            ret = value[i]!= 0;
        } else {
            ret = false;
        }
