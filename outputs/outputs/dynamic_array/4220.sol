pragma solidity ^0.8.0;
contract G {
    uint256[3] x = [ 1, 2, 3 ];
    uint256[7] memory prev;
    constructor(uint256[3] memory input, uint arg) public {
        prev = x;
        x[0] = input[0];
        x[1] = input[1];
        x[2] = input[2];
        prev[2] = prev[1];
        prev[1] = arg;
    }
}

pragma solidity ^0.8.0;
contract G {
    uint256[3] x = [ 1, 2, 3 ];
    uint256[7] memory prev;
    bytes20[3] y;
    constructor(uint256[3] memory input1, uint256[7] memory input2, bytes20[3] memory input3) public {
        prev = x;
        x[0] = input1[0];
        x[1] = input1[1];
        x[2] = input1[2];
        prev[2] = prev[1];
        prev[1] = input2[2];
        prev[3] = input2[1];
        prev[4] = input2[0];
        prev[5] = input3[2];
        prev[6] = input3[1];
        prev[7] = input3[0];
        y[0] = input3[0];
        y[1] = input3[1];
        y[2] = input3[2];
    }
}
