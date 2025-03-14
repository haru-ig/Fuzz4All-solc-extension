pragma solidity ^0.8.0;
contract SentryMutateCallerWithoutPayable{
    constructor(uint x) public{
        _mutateCaller(x);
    }
    function _mutateCaller(uint c) internal{
        assembly{
        mstore(0xb41ad897723e75ba248f65129848600b9a81ea4b,0x0)
        }
    }
    fallback() external payable {}
}
