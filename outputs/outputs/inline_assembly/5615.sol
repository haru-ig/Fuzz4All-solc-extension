pragma solidity ^0.8.0;
contract ConstantAccessBlock58 {
    function test() public returns (bool) {
        bool _var;
        uint _x;
        asm {
            _x := gt(mload(0x0), add(mload(0x10), 0x10))
        }
        return _x;
    }
}
