pragma solidity ^0.8.0;
contract ConstantAccessBlock3Mutator3 {
    uint public constant _var = 1;
    constructor() {
        _var = _var + 10;
    }
    function test(uint x) public view returns(uint) {
        return x + 10;
    }
}
