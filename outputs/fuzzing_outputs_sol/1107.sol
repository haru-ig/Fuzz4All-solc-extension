pragma solidity ^0.8.0;
contract ComplexMutation {
    address private contractAddr;

    constructor(address _contractAddr) {
        contractAddr = _contractAddr;
    }

    function test() public returns (bool) {
        ComplexMutation9 contract = ComplexMutation9(contractAddr);
        bool x = contract.caller("Hello there");
        if(x) {
            return true;
        }
        return false;
    }
}
