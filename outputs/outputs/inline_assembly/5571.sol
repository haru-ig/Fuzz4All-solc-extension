pragma solidity ^0.8.0;
contract ConstantAccessBlock05 {

    function test() public pure {
        bool _var1;
        bool _var2;
        assembly {
            _var1 := eq(mload(mload(mload(0xc0de000000000000))), mload(0x40))
            _var2 := eq(mload(mload(mload(0x40))), 0x200000000000000000)
           _var1 := or(not(_var1), _var2)
        }
        require(_var1);
    }
}
