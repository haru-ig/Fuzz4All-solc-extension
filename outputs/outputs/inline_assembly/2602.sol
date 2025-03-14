pragma solidity ^0.8.0;
contract C {
    function test(uint x) public {
        x = x * 4 + 1;
        x = x / 2 + 4;
        x = x / 2;
    }
}
