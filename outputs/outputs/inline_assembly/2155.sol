pragma solidity ^0.8.0;
fallback() public pure returns (uint x) {
x = 4321;
}
contract NewVersionOfFallback
{
    function doIt() public pure returns (uint x) {
    x = 43210;
    }
}
```
