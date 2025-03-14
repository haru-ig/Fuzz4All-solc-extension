pragma solidity ^0.8.0;
contract MutatedBlock9Mutation5 {
    uint _var = 1;
    function test() public view returns(uint) {
        uint x;
        (x,x) = block.blockhash(2);
        x = x - 1;
        (x,x) = block.blockhash(1);
        x = x + 2;
        return x;
    }
}
