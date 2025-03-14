pragma solidity ^0.8.0;
contract ConstantAccessBlock21 {
    function test() public returns (bool) {
        bool _var;
        for (uint i = 0; i < 3; i++) {
            assembly {
                _var := gt(mload(0xb89000000000000000), add(mload(0x20), sub(0x18, mload(0x18))));
            }
        }
        return _var;
    }
}
