pragma solidity ^0.8.0;
contract EmptyContract {
    function execute() public pure {
        bytes32 x;
        assembly {
            x := 1
        }
        return x;
    }
}
```
