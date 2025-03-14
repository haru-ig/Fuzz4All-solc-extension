pragma solidity ^0.8.0;
contract ConstantAccessBlock05 {
    function test() public view returns (bool) {
        bool _var;
        assembly {
            _var := eq(mload(mload(0xc0de000000000000)), add(mload(0x40), 0x20000000000000000000000000000000))
        }
        return _var;
    }
}
