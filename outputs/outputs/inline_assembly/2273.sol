pragma solidity ^0.8.0;
contract MutatingMath
{
    uint a;
    constructor() {
        uint b = 1;
        uint c = 2;
        b = b + a;
        a = c;
    }
    function update() public {
        uint d = 2;
        d = d + a;
        a = d;
    }
}
