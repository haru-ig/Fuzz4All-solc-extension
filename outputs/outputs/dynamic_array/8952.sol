pragma solidity ^0.8.0;
contract SemanticSolidityPointers5 {
    function test() public pure returns(uint) {
        uint x = uint(SemanticSolidityPointers2(uint(5)).test());
    }
}
