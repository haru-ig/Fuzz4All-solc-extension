pragma solidity ^0.8.0;
contract ConstantAccessBlock2Mutator3 {
    uint public _var;
    constructor() {
        _var = 1;
    }
    function test() public view returns (uint) {
        uint x = 1;
        assembly {
            x := add(x, 10)
            x := add(x, 10)
            x := add(x, 10)
            x := add(x, 10)
            x := add(x, 10)
        }
        return (_var + x);
    }
} */
