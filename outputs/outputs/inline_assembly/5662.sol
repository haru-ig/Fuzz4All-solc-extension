pragma solidity ^0.8.0;
contract ConstantAccessBlock4Mutator3 {
    uint public constant _var = 1;
    constructor() {
    }
    function test() public view returns(address) {
        return address(3) - 1;
    }
}
