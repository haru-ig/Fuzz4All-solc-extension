pragma solidity ^0.8.0;
contract SemanticTest8 {
    constructor () public {
        uint[] memory array1 = new uint[](5);
        uint[] memory array2 = new uint[](8);
        uint[] memory array3 = new uint[](10);
        for (uint j = 0; j < 5; j += 1) {
            array1[j] = 0;
        }
        for (uint i = 0; i < 5; i += 1) {
            array2[i] = 0;
        }
        for (uint ii = 0, iiLen = array2.length; ii!= iiLen; ++ii) {
            array3[ii] = 0;
        }
        for (uint i; i < 5; i += 1) {
            uint j = array1[i];
            if (i < array2.length) {
                array2[i + 1] = array2[i] * 30 + value2[j];
            } else {
                array2[ii + 1] = array2[ii] * 30 + value2[j];
                array3[i + 1] = array3[i] * 30 + value3[j];
            }
        }
    }
}

contract SemanticTest9 {
    constructor () public {
        uint[] memory array
