pragma solidity ^0.8.0;
contract test277b {
    uint a;
    uint[2] b;
    uint c;
    uint d;
    function test(uint _b) public {
        while (b[1] == _b) a += 1;
    }
}
