pragma solidity ^0.8.0;
contract ConstantAccessBlock07 {
    function test() public returns (uint) {
        uint _var;
        assembly {
            _var := mconcat(0xfffffffffffffffffff)
        }
        return _var;
    }
}
