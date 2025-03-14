pragma solidity ^0.8.0;
contract ConstantAccessBlock5Mutator {
    uint _var;
    constructor(){
        _var = 1;
    }
    function test() public returns (uint) {
        uint x = 1;
        uint y = 2;
        assembly {
            x := add(x, 1)
            y := add(y, 1)
        }
        return _var;
    }
}
