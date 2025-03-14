pragma solidity ^0.8.0;
contract Test14 {
    uint public A;
    uint public B;
    constructor() public {
        A = 1;
        B = 1;
        A += 1;
        B += 1;
        A += 1;
        B += 1;
    }
    function read() view returns (uint) {
        return 0;
    }
}
