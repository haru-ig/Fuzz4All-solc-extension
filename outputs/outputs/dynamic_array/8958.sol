pragma solidity ^0.8.0;
contract SemanticSolidityPointers {
    function test() public pure returns(address[] memory) {
        uint x = 94559960048;
        uint[] memory y = [x];
        address[] memory z = [msg.sender];
    }
}
