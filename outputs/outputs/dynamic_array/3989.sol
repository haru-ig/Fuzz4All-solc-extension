pragma solidity ^0.8.0;
contract D {
    uint[] public s1;
    constructor() public {
        s1.push(1);
    }
    function f(uint[] storage x) public {
        s1.push(1);
    }
}
