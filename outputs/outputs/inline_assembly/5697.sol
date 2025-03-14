pragma solidity ^0.8.0;
contract MutatedBlock9Mutation5 {
    using Math for uint256;
    uint public _var = 1;
    function test() public returns(uint) {
        uint x;
        uint256 y;
        y = _var.div(2);
        y = y.mul(y);
        x = x.sub(y);
        x = x.add(block.number.div(2));
        x = x.pow(x);
        return x;
    }
}
