pragma solidity ^0.8.0;
contract MutatedBlock9Mutator5 {
    uint public _var = 1;
    function test(uint a) public {
        uint x;
        x = block.number;
        a = a + uint256(1);
        a = a + a;
        a = a + uint256(1);
        a = a + uint256(1);
        a = a + uint256(1);
        _var = a;
    }
}
