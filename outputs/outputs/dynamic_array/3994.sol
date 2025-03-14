pragma solidity ^0.8.0;
contract C {
    uint[] public s1;
    constructor() public {
        s1.push(1);
    }
    function f(uint[] memory x) public {
        x[2] = 1;
    }
    function g(uint[] memory x) public {
        x.push(1);
    }
}
