pragma solidity ^0.8.0;
contract SemanticEquivalent {
    bool private initialized;

    modifier init() {
        initialized = true;
        _;
    }

    function testMethod() public init pure returns(string memory x) {
        x = 0x547C9C8B604FB369E326EF6A9A597CFC6F9E466D;
        return x;
    }
}
