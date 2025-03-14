pragma solidity ^0.8.0;
contract Test {
    uint constant public int_max = 2**36 - 1;
    uint public x = 2**36 - 1;
    uint public z = x / 37;
    function test() public {
        z = 11;
        z = 2**37 / 11;
    }
}
