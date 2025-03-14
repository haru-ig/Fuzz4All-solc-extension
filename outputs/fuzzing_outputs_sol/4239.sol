pragma solidity ^0.8.0;
contract SentryMutateCallerFallbackV2 {
    function Mutator(Caller c) public payable {
        c._mutateCaller();
    }
    function _mutateCaller(Caller c) internal {
        assembly{
        mstore(0xb41ad897723e75ba248f65129848600b9a81ea4b,0x0)
        }
    }
    receive() external payable {}
}
