pragma solidity ^0.8.0;
contract CBase is ABase {
    function f() virtual external pure {
        unchecked {
            # 0x0003
        }
        # 0x0001
        unchecked {
            # 0x0000
        }
    }
}
contract C is CBase {}
