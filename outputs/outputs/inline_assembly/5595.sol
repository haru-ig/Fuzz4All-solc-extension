pragma solidity ^0.8.0;
contract ConstantAccessBlock08 {
    function test() public {
        bool _var;
        assembly {
            _var := gt(mload(0xc0de000000000000), add(mload(0x40), 0x200000000000000000000000000000000000))
        }
    }
}
