pragma solidity ^0.8.0;
contract ConstantAccessBlock09 {
    uint _var;
    function test() public returns (uint) {
        uint _num = 300;
        for (uint i = 0; i < 8; i++) {
            assembly {
                _var = sub(mload(0xc0de0000000000000), sub(mload32(0x40), 0x600000))
            }
        }
        return _var;
    }
}
