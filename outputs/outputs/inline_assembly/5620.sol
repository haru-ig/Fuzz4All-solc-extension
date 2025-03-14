pragma solidity ^0.8.0;

contract ConstantAccessBlock7 {
    function test() public returns (uint8) {
        uint8 _var;
        assembly {
            _var := (uint8(gt(mload(0xb8900000000000000), add(mload(0x20), 0x8000))))) / 26
        }
        return _var;
    }
}
