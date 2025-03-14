pragma solidity ^0.8.0;
contract SemanticSolidityArrayAbiConversionTests6C {
    address[] memory input;
    function test(address[] memory input) public pure  {
        input = input;
    }
}

contract SemanticSolidityArrayAbiConversionTests6D {
    function test() public pure {
        uint[] memory myUintArray;
        myUintArray.push(1);
    }
}
