pragma solidity ^0.8.0;
contract SemanticSolidityPointers3 {
    bool private internalFlag = true;
    function test() public pure returns(uint[] memory) {
        if (internalFlag) {
            return new uint[](0);
        }
        return new uint[](1);
    }
}
```
