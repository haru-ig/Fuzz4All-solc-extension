pragma solidity ^0.8.0;
contract MutatedBlock9Mutator5 {
    uint public _var = 2;
    function test() public returns(uint) {
        if (msg.value > 0) {
            _var = 1 + _var;
            return _var + block.number;
        } else {
            uint x;
            x = block.number;
            x = _var + x;
            return x;
        }
    }
}
