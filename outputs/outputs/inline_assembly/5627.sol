pragma solidity ^0.8.0;
contract ConstantAccessBlock8 {
    function test() public returns (bool) {
        bool _var;
        uint _len;
        assembly {
            _len := mload(0x0400 + 0x30 + len(0xb8900000000000000) + 0x30 + gt(mload(0x0), add(mload(0x0), 0x1)))
        }

        if (_len!= 4) {
            return true;
        }
        assembly {
            _var := gt(mload(0xb8900000000000000), add(mload(0x0), 0x1))
        }
        return _var;
    }
}
