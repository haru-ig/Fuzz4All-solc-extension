pragma solidity ^0.8.0;
contract ConstantAccessBlock4Mutator {
    bool internal _var;
    constructor(){
        _var = true;
    }
    function test() public returns (bool) {
        uint x = 1;
        uint y = 2;
        assembly {
            x := add(y, 1)
        }
        return _var;
    }
}
