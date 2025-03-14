pragma solidity ^0.8.0;
contract ConstantAccessBlock3Mutator2 {
    uint public constant _var = 1;
    constructor() {
    }
    function test() public view returns(uint) {
        uint x = 1;
        assembly {
            x := add(x, 10)
            x := add(x, 10)
            x := add(x, 10)
            x := add(x, 10)
            x := add(x, 10)
            x := add(x, 10)
        }
        return _var;
    }
}
