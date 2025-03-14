pragma solidity ^0.8.0;
contract Mutators1  {
    function test (uint256 _a, uint256 _b) public returns (uint256) {
        _a = _a + _b;
        return 0;
    }
}

```
