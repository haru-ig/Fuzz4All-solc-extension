pragma solidity ^0.8.0;
contract SemanticTest9 {
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

        uint index = 0;
        for (uint i = 0; i < (value1.length - 1); i += 2) {
            value1[index] = value1[i + 1];
            value2[index] = value1[i + 2];
            value3[index] = value1[i + 3];
            index += 1;
        }
    }

    function isOverflow(uint i) public view returns (bool) {
        bool ret;
        if (i < value1.length) {
            ret = value1[i]!= 0;
        } else {
            ret = false;
        }
        return ret;
    }
}
