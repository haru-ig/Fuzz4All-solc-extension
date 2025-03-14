pragma solidity ^0.8.0;

contract SemanticTest9 {

    uint[] public value1;

    uint[] public value2;

    uint[] public value3;

    uint[] public reassigned;

    uint[] public reassignedNew;

    uint[] public reassignedOld;

    uint[] public modified1;

    uint[] public modified2;

    uint[] public modified3;


    constructor () public {
        for (uint i = 0; i < 10; i += 1) {
            uint j = i;
            if (j < value1.length) {
                reassignedNew[j] += 10;
            }
            if (j < reassigned.length) {
                reassigned[j] += 20;
            }
            if (j < reassignedOld.length) {
                reassignedOld[j] += 30;
            }
        }
        for (uint i = 0; i < (value1.length - 1); i += 2) {
            modified1[i] = reassignedOld[i + 1];
            modified2[i] = reassignedOld[i + 2];
            modified3[i] = reassignedOld[i + 3];
        }
        value1.push(55);
        value2.push(66);
        value3.push(77);
    }

    function isOverflow(uint i) public view returns (bool) {
        bool ret;
        if (i < value1.length) {
            ret = value1[i
