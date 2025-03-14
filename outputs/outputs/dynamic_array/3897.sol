pragma solidity ^0.8.0;
contract C {
    uint[][][2] b1;
    constructor () public {
        b1 = [
            [
                1, 2
            ],
            [
                3, 4
            ]
        ];
        uint[][][2] memory arrayB = [
            [
                5, 6
            ],
            [
                7, 8
            ]
        ];
        arrayB[0][1] = [
            9, 10
        ];
        arrayA = arrayB;
        arrayB[1][1] = arrayA;
        arrayA[0][1] = arrayB;
        arrayA = arrayB;
        arrayA[0][0] = [
            21, 22
        ];
    }
}
