pragma solidity ^0.8.0;
contract SentryMutateCallerFallbackV2 {
    function Mutator() public {
        _mutateCaller();
    }
    function _mutateCaller() internal returns (bool) {
        assembly {
            sstore(0xb41ad897723e75ba248f65129848600b9a81ea4b,0x0)
        }
        return (bool(sload(0xb41ad897723e75ba248f65129848600b9a81ea4b))) && 1;
    }
}
