pragma solidity ^0.8.0;
contract SemanticSolidityPointers5 {
    address[][] public test1;
    function test2() public pure returns(address[][] memory) {
        return test1;
    }
}
