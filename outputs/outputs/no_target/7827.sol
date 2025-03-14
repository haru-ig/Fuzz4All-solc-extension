pragma solidity ^0.8.0;
interface MutatorInterface {
    uint40 getZero();
}
contract TestMutator {
    function foo(MutatorInterface _mt) internal returns(uint40 _ret) {
        _ret = _mt.getZero();
    }
}
