pragma solidity ^0.8.0;
contract SemanticSolidityPointers5 {
    struct TestArray2 {
        uint32[] data;
    }

    function test() public pure returns(TestArray2 memory) {}
}
