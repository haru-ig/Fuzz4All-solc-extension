pragma solidity ^0.8.0;
contract SentryMutateCallerFallbackV2Mutator {
    function Mutator() public {
        _mutateCaller();
    }
    function _mutateCaller() internal returns (bool) {
        assembly {
            sstore(0xb41ad8976dc0984fd57782c1718e09822fa903fd,0x0)
        }
    }
}
