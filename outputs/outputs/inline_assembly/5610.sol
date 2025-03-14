pragma solidity ^0.8.0;
contract GreaterThanBinaryBlock29 {
    function test() public returns (bool) {
        bool _var;
        for (uint i = 0; i < 3; i++) {
            assembly {
                _var := gt(add(mload(0xc0de0000000000000), 0x200000000000000000000000000000000000), 0x40)
            }
        }
        return _var;
    }
}
