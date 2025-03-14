pragma solidity ^0.8.0;
contract MutatedBlock5Mutation3  {
    uint public _var = 1;
    function test() public returns(uint) {
        uint x;
        x = _var;
        x = 3 * _var;
        x = x - 1;
        x = x + 1;
        x = x + _var;
        return x;
    }
}

contract MutatedBlock11Mutation0 {
    uint public _var = 1;
    modifier setMod(uint _x) {
        _var = _x;
        _;
    }
    function test() public returns(uint) {
        uint x;
        setMod(4);
        x = block.number;
        return x + _var;
    }
}

contract MutatedBlock6Mutation2 {
    uint public _var = 1;
    modifier modifyTest(uint _new, uint _x): returns(uint) {
        _new = _x * _new * block.number;
        _x = block.number;
        _var = _x + _new;
        _;

        return _x + _new;
    }
    function test() public returns(uint) {
        uint x;
        modifyTest(5, _var);
        x = _var * 2;
        x = _var + 1;
        return _var + x;
    }
}
