pragma solidity ^0.8.0;
contract SemanticSolidityArrayAbiConversionTests9 {
    function test() public pure  returns(address[2][4] memory) {
        address[2][4][4] memory foo = new address[2][4][4](2,3);
    }
}
