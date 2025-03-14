pragma solidity ^0.8.0;
contract G {
    uint256[3] x = [ 1, 2, 3 ];
    constructor(uint256[2] memory input, uint arg) public {
         uint256[2] memory prev = x;
         x[1] = input[0];
         x[2] = input[1];
         prev[0] = arg;
         prev[1] = x[2];
    }
}

pragma solidity ^0.8.0;
contract G {
    uint256[3] x = [ 1, 2, 3 ];
    constructor(uint256[2] memory input1, uint input2, uint arg) public {
         uint256[2] memory prev = x;
         x[1] = input2;
         prev[1] = prev[2];
         prev[0] = arg;
         prev[2] = x[1];
    }
}
