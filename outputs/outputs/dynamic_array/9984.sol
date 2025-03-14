pragma solidity ^0.8.0;
contract SemanticTest3 {
    uint[] public value1;
    uint[] public value2;
    uint[] public value3;
    constructor () public {
        for (uint i = 0; i < 10; i += 1) {
            uint j = i;
            if (j < value1.length) {
                value1[j] += 10;
                incrementValue(value1[j], value1[j], j);
            } else {
                incrementValue(10, 20, j);
            }
            if (j < value2.length) {
                value2[j] += 20;
            }
            if (j < value3.length) {
                value3[j] += 30;
            }
            if (j < value1.length) {
                value1[j] += 10;
            }
            if (j < value2.length) {
                value2[j] += 20;
            }
            if (j >= value3.length) {
                value3[j] += 30;
            }
        }
    }
    function incrementValue(uint indx1, uint indx2, uint indx3) public {
        uint j = indx1;
        if (j < value1.length) {
            value1[j] += 10;
            value1[j] += 10;
            value1[j] += 10;
        } else {
            value1[indx1] +=
