pragma solidity ^0.8.0;
contract ConstantAccessBlock32 {
    function test() public returns (bool) {
        bool _var;
        for (uint i = 0; i < 3; i++) {
            assembly {
                _var := gt(mload(0xb8b00000000000000), add(mload(0x60), 0x4000000000000000000000000000000000))
            }
        }
        return _var;
    }
}
