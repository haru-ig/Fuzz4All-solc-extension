pragma solidity ^0.8.0;
contract Mutate4{
    uint  b;
    uint[5] b;
    constructor() {
        for(uint i = 0; i < 5; i++)
            b[i] = 0;
    }
    function multiply() public {
        this;
    }
}
