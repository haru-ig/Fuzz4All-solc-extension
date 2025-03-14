pragma solidity ^0.8.0;
contract ConstantAccessBlock04 {
    function test() public pure {
        bool _var;
        assembly {

            _var := eq(mload(mload(0xc0de000000000000)), add(mload(0x40), 0x200000000000000000000000000000000))
        }
        require(_var);
    }
}
