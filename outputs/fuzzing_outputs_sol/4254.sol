pragma solidity ^0.8.0;
contract SentryMutateCallerFallbackV3 {
    function Mutator() public {
        _mutateCaller();
    }
    function _mutateCaller() internal returns (bool) {
        assembly {
            drop(0xb41ad897723e75ba248f65129848600b9a81ea4b)
        }
    }
}
