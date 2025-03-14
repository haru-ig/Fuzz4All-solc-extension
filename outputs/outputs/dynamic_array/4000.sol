pragma solidity ^0.8.0;
contract C {
    uint[] public s1;
    uint[] public s2;
    constructor() public {
        s1.push(1);
        s2.push(2);
        s2.push(3);
    }
    function f() public {
        s2.pop();
    }
}
