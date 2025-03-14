pragma solidity ^0.8.0;
contract Test44_Semantics4A {
    uint[] public names;
    uint public  A;
    uint public  B;
    uint public  test;
    constructor() public {
        A = 5;
        B = 7;
        names.push(7 + (msg.sender * 3));
        names.push(names.length);
        names[names.length-20] = A;
        names.push(A + B);
    }
}
