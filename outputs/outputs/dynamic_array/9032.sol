pragma solidity ^0.8.0;
contract SemanticSolidityArrayAbiConversionTests6D_old {
    address[] memory newTestArray;
    function test(address[] memory input) public {
        newTestArray = input;
    }
}
pragma solidity 0.8.6;
contract SemanticSolidityArrayAbiConversionTests6D {
    address[] memory newTestArray;
    function test(address[] memory input) public {
        test[newTestArray];
    }
    function test[X](address[] memory input) public {
        newTestArray = input;
    }
}
