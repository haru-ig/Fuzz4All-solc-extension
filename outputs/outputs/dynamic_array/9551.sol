pragma solidity ^0.8.0;
contract Main2 {
    array(uint[10][10] memory) private zero_matrix;
    constructor () {
        for (uint i = 0; i < 10; i++) {
            for (uint j = 0; j < 10; j++) {
                zero_matrix[i][j] = 0;
            }
        }
    }
}
