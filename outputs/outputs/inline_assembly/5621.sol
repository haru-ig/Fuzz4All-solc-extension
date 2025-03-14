pragma solidity ^0.8.0;
contract ConstantAccessBlock7 {
    function test() public returns (bool) {
        bool _var;
        assembly {
            _var := lt(add(add(mload(0xb8900000000000000), 0x1), 0x8), add(mload(0x20000), 256))
        }
        return _var;
    }
}
