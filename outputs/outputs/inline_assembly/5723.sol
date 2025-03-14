pragma solidity ^0.8.0;
contract MutatedBlock9Mutation52 {
    uint public _var = 1;
    function test() public view returns(uint) {
        uint x = block.number;
        require(x > 10,"Block 9: Error x must > 10.").revert();
    }
}
