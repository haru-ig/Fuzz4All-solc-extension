pragma solidity ^0.8.0;
contract ConstantAccessBlock5Mutator {
    bool internal _var;
    constructor(){
        _var = true;
    }
    function test() public {
        uint x = 1;
        uint y = 2;
        assembly {
            x := add(y, 1 - 1)
        }
    }
}
