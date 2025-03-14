pragma solidity ^0.8.0;

contract test {
    uint a;
    constructor(uint c) public {
        a = c;
    }

    function setA(uint _a) public {
        a = _a;
    }
}
