pragma solidity ^0.8.0;
contract Test15 {
    uint public A;
    uint[] public B;
    constructor() public {
        A = 1;
        B = [6, 7, 8];
        A += 1;
        B.push(9);
        A += 1;
        B.push(10);
        A += 1;
        B.push(11);
    }
}
