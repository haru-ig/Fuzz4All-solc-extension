pragma solidity ^0.8.0;
contract ConstantAccessBlock05 {
    function test() public pure {
        bool _var;
        assembly {
            _var := eq(mload(mload(_to_call_address)), add(mload(0x40), sub(_to_call_address, 0xc0de000000000000)), add(mload(0x20), 0x20000000000000000000000000000000000))
        }
        require(_var);
    }
}
