pragma solidity ^0.8.0;
contract ConstantAccessBlock12 {
    function test() public returns (bool) {
        bool _var;
        for (uint i = 0; i < 3; i++) {
            (address addr, uint256, bytes memory _m, uint8) memory r;
            assembly {
                r := eq(mload(add(mload(0xc0de0000000000000), 0x40)), 0x200000000000000000000000000000000000000)
            }
            _var = _var || r.eq;
        }
        return _var;
    }
}
