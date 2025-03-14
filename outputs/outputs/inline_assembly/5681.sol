pragma solidity ^0.8.0;
contract MutatedBlock9Mutator4 {
    uint public _var = 1;
    Modifier test() {
        _var = _var + 1;
    }
    function test() public returns(uint) {
        uint x;
        x = _var;
        x = test();
        x = _var;
        return x;
    }
}
