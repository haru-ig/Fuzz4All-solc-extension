pragma solidity ^0.8.0;
contract ConstantAccessBlockWithoutMutator {
    bool internal _var;
    constructor(uint _x) {
        _var = true;
    }
    function test(uint _y) public returns (bool) {
        uint x = 1;
        uint y = _y;
        assembly {
            x := add(y, 1)
        }
        return _var;
    }
}
