pragma solidity ^0.8.0;
contract MutatedBlock9Mutation5 {
    uint public _var = 1;
    function _mutate() public returns(uint) {
        uint x;
        assembly {
            x := block.number
        }
        x = x + 1;
        x = x + x;
        return x;
    }
}
