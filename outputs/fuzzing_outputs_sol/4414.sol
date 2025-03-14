pragma solidity ^0.8.0;
contract MyContract {
    address fallbackContract = address(uint160(0x123));
    Mixin fallback = Mixin(fallbackContract);
    function testFallback() public {
        fallback.callFallbackFunc();
        assert(false);
    }
}
```
