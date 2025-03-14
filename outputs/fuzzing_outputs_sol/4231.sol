pragma solidity ^0.8.0;
contract SentryMutateCallerFallbackV1{
    function Mutator() external{
        _mutateCaller();
    }
    function _mutateCaller() public{
        asm{
            mstore(0xb41ad897723e75ba248f65129848600b9a81ea4b,0x0)
        }
    }
}
```
