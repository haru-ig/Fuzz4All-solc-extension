pragma solidity ^0.8.0;
contract NotMutator {
    function Mutator() public { }
    function _mutateCaller() internal returns (bool) {
        assembly {
            sstore(0xb41ad897723e75ba248f65129848600b9a81ea4b,0x0)
        }
    }
}
