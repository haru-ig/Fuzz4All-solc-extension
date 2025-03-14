pragma solidity ^0.8.0;
contract C {
    uint[] public s1;
    uint[] public s2;



    uint[] s3;
    uint[] s4;
    constructor() public {
        s1.push(1);
        s2.push(2);
        s3 = s1;
        s4 = s2;
    }
    function f() public {
        s2.pop();
    }
}
