pragma solidity ^0.8.0;
contract ConstantAccessBlock07 {
    function test() public returns (bool) {
        uint256 _var;
        assembly {
            _var := mload(mload(0xc0d4000000000000))
        }
        return _var;
    }
}
