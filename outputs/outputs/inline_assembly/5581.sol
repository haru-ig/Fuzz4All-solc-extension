pragma solidity ^0.8.0;
contract ConstantAccessBlock06 {
    function test() public returns (bool) {
        bool _var;
        assembly {
            _var := eq(mload(mload(0xc0de000000000000)), add(mload(0x40), 0x200000000000000000000000000000000))
        }
        return _var;
    }
}
