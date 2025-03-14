pragma solidity ^0.8.0;
contract SimpleMath
{
    uint a;
    constructor() {
        uint b = a + 1;
        a = b;
    }
    function update() public {
        uint c = a + 2;
        a = c;
    }
}
