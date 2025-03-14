pragma solidity ^0.8.0;
contract Test {
    struct X {
        uint x;
        uint y;
    }
    X[2] x = [ {1, 0}, {2, 1} ];
    constructor(X[2] memory input) public {
       X[2] memory next = x;
       next[0] = input[0];
       next[1] = input[1];
    }
}
