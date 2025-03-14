pragma solidity ^0.8.0;
contract MutatedBlock9Mutator4 {
    uint _var;
    function test() public returns(uint) {
        (_var);
        (_var);
        _var;
        _var;
        _var;
        _var;
        _var;
        _var;
        _var;
        _var;
        _var;
        _var;
        _var;
        _var;
        _var;
    }
}

pragma solidity ^0.8.0;
contract MutatedBlock9Mutator4 {
    uint public _var;
    function test() public returns(uint) {
        uint x;
        asm {
            _var;
            _var;
            _var;
            _var;
            _var;
            _var;
            _var;
            _var;
            _var;
            _var;
            _var;
            _var;
            _var;
            _var;
            _var;
            _var;
        }
    }
}
