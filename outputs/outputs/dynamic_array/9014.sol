pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract SemanticSolidityArrayAbiConversionTests6B {
    function test(address[] calldata input) public pure returns (address[] memory output) {
        output = input;
    }
}


pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract SemanticSolidityArrayAbiConversionTests6C {
    function test(address[] calldata input) public pure {
        address[] memory foo;
        foo = input;
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract SemanticSolidityArrayAbiConversionTests6D {
    function test(address[] calldata arg) public pure {
        address[] memory foo;
        foo = arg;
    }
}
