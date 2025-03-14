pragma solidity ^0.8.0;
contract ConstantAccessBlock08 {
    function test() public returns (bool) {
        bool _var;
        assembly {
            _var := mload(0x40) gt mload(0xc0de00000000000000)
        }
        return _var;
    }
}
