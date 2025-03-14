pragma solidity ^0.8.0;
contract EquivalentAbiMutations_v1 {
    uint constant value216 = 2;
    uint constant value224 = 2;
    public function test (uint256  _value216, uint256  _value224) public returns (uint256, uint256, uint256, uint256) {
        return (value216, value216, value216, value216);
    }
}
