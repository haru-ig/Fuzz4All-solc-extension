pragma solidity ^0.8.0;
contract ConstantAccessBlock12 {
    function test() public returns (bool) {
        bool _var;
        uint _offset = 0x40;
        _var = gt(mload(_offset), add(mload(0xC0de0000000000000), 0x20000000000000000000000000000000));
        return _var;
    }
}
