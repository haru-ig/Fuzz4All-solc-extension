pragma solidity ^0.8.0;
contract C {
    struct S {
        uint a;
        uint b;
        uint[] arrA;
        uint[] arrB;
    }
    S public s;
    constructor() public {
        s.a = 1;
        s.b = 2;
        s.arrA.push(1);
        s.arrA.push(2);
        s.arrB.push(1);
        s.arrB.push(2);
    }
    function f(S memory x, S memory y, S memory z) public {
        s.a = 1;
        s.b = 2;
        s.arrA.push(1);
        s.arrA.push(2);
        s.arrB.push(1);
        s.arrB.push(2);
    }
}
