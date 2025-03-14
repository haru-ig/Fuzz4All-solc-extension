pragma solidity ^0.8.0;
contract C {
    uint[] public s1;
    constructor() public {
        s1.push(1);
    }
    function f(uint[] memory x) public {
        s1.push(1);
    }
}
