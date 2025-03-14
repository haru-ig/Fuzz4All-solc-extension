pragma solidity ^0.8.0;
contract SemanticSolidityArrayAbiConversionTests6C {
    void f() public pure {
        address[] memory foo;
        a.calldata[2] += 1;
        foo = a.calldata;
    }
}
