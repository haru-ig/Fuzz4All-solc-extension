pragma solidity ^0.8.0;
library G {
    uint256[2] x = [ 1, 2 ];
    uint256[2] memory prev = memory(x);
    uint256[2] memory input;
    constructor(uint256[2] memory _input, uint256 arg) public
    {
        input[0] = x[0];
        input[1] = x[1];
        prev[0] = input[1];
        prev[0] = arg;
    }
}
contract G {
    function f(uint[] memory input, uint arg) public {
        uint256[2] memory prev = memory(x);
        x[1] = input[1];
        prev[0] = input[0];
        prev[1] = arg;
        prev[1] = prev[0];
    }
}
