pragma solidity ^0.8.0;
contract CallerMutatorMut {
    mut bool immutable _a;
    constructor (bool a) {
        _a = a;
    }
    function Mut() {
        if (_a) {
            throw;
        }
    }
    function Mut(uint256 a) {
        require(_a, "a is not a mut");
        emit MutLog(a);
    }
    event MutLog(uint256 a);
}
