pragma solidity ^0.8.0;
contract SemanticSolidityArrayAbiConversionTests9 {
    function test() public pure  returns(address[3] memory) {
        address[3] memory foo = [address(this), 3, address(this)];
    }
}
