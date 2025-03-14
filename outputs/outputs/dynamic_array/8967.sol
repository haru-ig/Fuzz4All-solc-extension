pragma solidity ^0.8.0;
contract SemanticSolidityPointers3 {
    function test() public pure returns(address) {
        address[] memory addresses = SemanticSolidityPointers4.test();
        return addresses[0];
    }
}
