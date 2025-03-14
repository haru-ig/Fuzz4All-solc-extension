pragma solidity ^0.8.0;
bytes32 constant _EMPTY = keccak256("");
contract SemanticSolidityPointers5{
    function test() public pure returns (bytes32 memory) {
        return _EMPTY;
    }
}
