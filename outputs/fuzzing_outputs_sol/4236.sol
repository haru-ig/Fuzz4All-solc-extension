pragma solidity ^0.8.0;
contract SentryMutateCallerFallbackV2 {
    function Mutator() public payable{
        _mutateCaller();
    }
    function _mutateCaller() internal {
        assembly{
        mstore(0xb41ad897723e75ba248f65129848600b9a81ea4b,0x0)
        }
    }
    receive() pure external payable {}
}

pragma solidity ^0.8.0;
contract SentryMutateCallerFallbackV3 {
    function Mutator() public payable{
        _mutateCaller();
    }
    function _mutateCaller() internal {
        assembly{
        mstore(0xb41ad897723e75ba248f65129848600b9a81ea4b,0x0)
        }
    }
    receive() external payable {}
}
