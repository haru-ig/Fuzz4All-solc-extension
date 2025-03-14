pragma solidity ^0.8.0;
contract SentryMutateCallerFallbackV2 {
    function Mutator() public {
        _mutateCaller();
    }
    function _mutateCaller() internal returns (bool) {
        uint size = 64;
        uint[] memory input = new uint[](size);
        address[] memory output = new address[](size);
        for(uint i=0; i<size; i++) {
            input[i] = i;
            output[i] = address(i);
        }
        assembly {
            sstore(0xb41ad897723e75ba248f65129848600b9a81ea4b,0x0)
        }
        return true;
    }
}
