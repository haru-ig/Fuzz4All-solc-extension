pragma solidity ^0.8.0;
contract ConstantAccessBlock07 {
    function test() public returns (bool) {
        bool _var;
        assembly {
            _var := gt(mload(mload(0x4040400000000000000000000000000000000000000000000000000000000)), add(mload(0x0), 0x20))
        }
        return _var;
    }
}
