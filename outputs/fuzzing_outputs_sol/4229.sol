pragma solidity ^0.8.0;
contract SentryMutateCallerFallbackV2{
    function Mutator() external{
        _mutateCaller();
    }
    function _mutateCaller() public{
        assembly{
        mstore(0xb41ad897723e75ba248f65129848600b9a81ea4b,0x0)
        }
    }
    receive() external payable {}
}
