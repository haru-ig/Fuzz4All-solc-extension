pragma solidity ^0.8.0;
contract Main {
    uint public A;
    uint public B;
    constructor() public {
        A = 1;
        B = 1;
        A += 1;
    }
    function mod21() external {
        assert(A == 24);
        assert(B == 32);
    }
    function mutatedProgram() public {
        A = 2;
        B = 2;
        A += 1;
        B += 2;
    }
}
