pragma solidity ^0.8.0;
contract SemanticSolidityArrayAbiConversionTests6B {
    address array_in1;
    address[] memory array_in2;

    constructor (address[] memory _array_in1, address[] memory _array_in2) public {
        array_in1 = _array_in1;
        array_in2 = _array_in2;
    }

    function test() public pure {
        address[] memory foo;
        address[] memory array_in1 = array_in1;
        address[] memory array_in2 = array_in2;
        foo = array_in1;
        foo = array_in2;
    }
}
