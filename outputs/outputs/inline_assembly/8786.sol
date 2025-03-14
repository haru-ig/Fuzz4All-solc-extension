pragma solidity ^0.8.0;
contract Test {
    function value() public returns (bool) {
        return true;
    }
    modifier nonEmpty {
        require(value());
        _;
    }
}
```
