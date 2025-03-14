pragma solidity ^0.8.0;
contract TestMutator {
    function test(Mutator _m){
        uint _a = _a,_b = _b,_internalVar = _internalVar;
        _a = _m.increment_AandB();
        _b = _m.increment_B();
        _internalVar = _m.increment_A();
        assert(_b == _a)
    }
}
