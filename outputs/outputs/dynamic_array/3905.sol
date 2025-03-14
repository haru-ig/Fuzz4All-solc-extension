pragma solidity ^0.8.0;
contract C {
    uint[][] memory a1;
    constructor (uint[][] memory arrayA) public {
        a1 = [ [13, 8], [7, 6], [4, 5] ];
        uint[][] memory arrayB = a1;
        a1[0] = [2, 8, 7, 6];
        uint[][] memory arrayB1; arrayB1 = [ [4, 5], [8, 7], [0, 1], [3, 2] ];
        uint[][] memory arrayB3 = arrayA;
        arrayA[0][1][0] = 3; arrayA[1][1][0] = 4; arrayA[1][1][1] = 5;
        a1 = arrayA;
        a1 = arrayB;
        uint[][2] memory old = arrayA;
        uint[][2] memory new = old;
        new[0] = [7, 8]; arrayB = arrayA; arrayA = arrayB;
        array = new;
        new[0] = [0x7fffff, 0xf000f]; arrayB = arrayA; arrayA = arrayB;
        uint[][] memory arrayB2 = arrayB1; arrayA = arrayB1;
        arrayA[0][0][1] = 0;
        uint[][] memory arrayB4 = arrayA; arrayA = arrayB4;
        uint[][] memory arrayB5 = arrayB1.concat(a1); arrayB5 = arrayA; arrayA = arrayB5;
        uint[][] memory arrayB7 = [ [0x7fffff, 0xf000f], arrayB1, arrayB]; array
