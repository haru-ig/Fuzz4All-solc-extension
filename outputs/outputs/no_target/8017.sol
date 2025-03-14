pragma solidity ^0.8.0;
contract DeprecatedRestrictedMutator2 {
    function f() public {
        uint overflow;
        unchecked {
            overflow += uint(0x01) - 18446744073709551615;
        }
    }
}
