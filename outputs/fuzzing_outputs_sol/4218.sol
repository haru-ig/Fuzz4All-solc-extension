pragma solidity ^0.8.0;
contract SentryMutateCaller{
    function Mutator() external payable{}
    function Caller() external payable{
        _mutateCaller();
    }
    function _mutateCaller() public{
        {
        bytes memory sentry = bytes("_mutateCaller()");
        assembly{
        mstore(0xb41ad897723e75ba248f65129848600b9a81ea4b,sentry)
        }
    }
    }
}
