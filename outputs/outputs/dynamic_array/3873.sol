pragma solidity ^0.8.0;
contract C {
    uint[][][2] b1;
    constructor (uint[][][2] memory arrayA) public {
        uint[] memory tempA1;
        tempA1[0] = 0;
        tempA1[1] = 0;
        tempA1[2] = 0;
        tempA1[3] = 0;
        uint[] memory tempA2;
        tempA2[0] = 0;
        tempA2[1] = 0;
        tempA2[2] = 0;
        tempA2[3] = 0;
        tempA2 = arrayA;
        uint[][] memory tempB11;
        tempB11[0].push(0);
        tempB11[0][0].push(0);
        tempB11[3] = tempA1;
        tempB11[1].push(tempA2);
        b1 = tempB11;
    }
}
