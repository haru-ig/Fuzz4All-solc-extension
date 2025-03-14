pragma solidity ^0.8.0;
contract SentryMutateCallerFallbackV4 {
    function Mutator() public {
        _mutateCaller();
    }
    function _mutateCaller() internal returns (bool) {
        address addr1;
        assembly {
            addr1 := mload(0x42)
        }
        selfdestruct(addr1);

        return true;
    }
}
