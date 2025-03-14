pragma solidity ^0.8.0;
contract EquivalentAbiMutations_v2_reverted {
    uint constant public _Value207 = 1;
    uint constant public _Value228 = 1;
    function test (uint256  _value215, uint256  _value227) public returns (uint256, uint256) {
        revert(_Value207);
        reverted{value: _Value228}();
    }
}
