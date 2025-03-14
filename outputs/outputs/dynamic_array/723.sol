pragma solidity ^0.8.0;
contract test277 {
    uint a;
    uint b;
    function test(uint _b) public {
        while (b == _b) a += 1;
    }
}
