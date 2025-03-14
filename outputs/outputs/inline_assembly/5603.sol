pragma solidity ^0.8.0;
contract ConstantAccessBlock12 {
    function test() public returns (bool) {
        bool _var;
        for (uint i = 0; i < 3; i++) {
            assembly {
                _var := gt(mload(0xc0de0000000000000), add(mload(0x40), 0x200000000000000000000000000000000))
            }
        }
        return _var;
    }
}
