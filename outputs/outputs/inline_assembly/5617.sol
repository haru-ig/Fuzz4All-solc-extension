pragma solidity ^0.8.0;
contract ConstantAccessBlock17 {
    bytes32 constant public constantId = 0;
    function test() public returns (bool) {
        bool _var;
        for (uint i = 0; i < 3; i++) {
            assembly {
                _var := iszero(and(mload(0xb8900000000000000), constantId))
            }
        }
        return _var;
    }
    receive() external payable {}
}
