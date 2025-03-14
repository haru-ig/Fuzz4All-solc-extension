pragma solidity ^0.8.0;
contract C {
    uint[] public s1;
    constructor() public {}
    function f(uint[] memory siz) public {
        s1.push(1);
    }
}

/*
