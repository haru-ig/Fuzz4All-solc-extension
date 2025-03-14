pragma solidity ^0.8.0;
contract C {
    uint[1] memory s1;
    constructor() public {
        s1.push(1);
    }
    function f(uint[] memory x) public {
        s1.push(1);
    }
}
