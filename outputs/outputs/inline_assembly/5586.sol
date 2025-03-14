pragma solidity ^0.8.0;
contract ConstantAccessBlock07 {
    function test() public returns (bool) {
        bool _var;
        assembly {
            _var := eqm(mload(mload(0xb0)), mload(mload(0x40)))
        }
        return _var;
    }
}
