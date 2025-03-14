pragma solidity ^0.8.0;
contract C {
    uint[] public s1;
    uint[] public s2;
    constructor() public {
        s1.push();
        s2.push();
    }
    function f() public {
        s2.pop();
    }
}
