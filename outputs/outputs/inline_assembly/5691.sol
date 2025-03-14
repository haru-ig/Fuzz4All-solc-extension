pragma solidity ^0.8.0;
contract MutatedBlock9Mutator6 {
    uint public _var = 1;
    function test() public returns(uint){
        uint x = block.number;
        x;
        x = x + uint256(1);
        x = x + x;
        ^(address);
        return x;
    }
}
