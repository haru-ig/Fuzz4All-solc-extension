pragma solidity ^0.8.0;
contract SemanticSolidityArrayAbiConversionTests9B {
    address[] memory array;
    function test(address[] memory _input) public pure {
        array = _input;
    }
}
pragma solidity ^0.8.0;

contract SemanticSolidityArrayAbiConversionTests9C {
    address[] public array;
    function test(address[] memory _input) public pure {
        array = _input;
    }
}
pragma solidity ^0.8.0;
