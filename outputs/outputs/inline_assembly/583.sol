pragma solidity ^0.8.0;
contract SemanticallyEquivalent {
    function testMethod() public pure {
        bytes memory y;
        assembly {
            mstore(0, add(y, 42))
            y := add(y, 0x000)
        }
    }
}
```
