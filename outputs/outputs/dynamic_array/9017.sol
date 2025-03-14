pragma solidity ^0.8.0;
contract SemanticSolidityArrayAbiConversionTests6C {
    function test(address[] memory input) public pure  {
        input[0] = 0x0011;
        input[1] = 0x0022;
    }
}

/** This contract exercises the use of dynamic arrays in solidity.
