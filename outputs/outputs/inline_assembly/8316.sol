pragma solidity ^0.8.0;
contract InlineAssembly9 {
    function f() public {
        uint256 n1;
        assembly {

            n1 := and(n1, n1)
            n1 := add(n1, n1)
            n1 := add(n1, n1)
            n1 := add(n1, n1)
        }
    }
}
```
