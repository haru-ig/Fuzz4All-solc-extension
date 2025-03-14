pragma solidity ^0.8.0;

contract SemanticSolidityPointers2 {
    function test() public pure returns(uint) {
        return foo();
    }

    function foo() private returns(uint) {
        SemanticSolidityPointers2 tao = SemanticSolidityPointers2({value: 3});
        return tao();
    }
}
