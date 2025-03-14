pragma solidity ^0.8.0;
contract C {
    uint[] private s1;
    constructor() public {
        s1.push(1);
    }
    function f(uint[1][] memory x) public {
        s1.push(1);
    }
}
