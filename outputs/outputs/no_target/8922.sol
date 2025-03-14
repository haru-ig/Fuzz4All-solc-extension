pragma solidity ^0.8.0;
contract Test {
    EquivalentAbiMutations_v2 constant MyContract = EquivalentAbiMutations_v2(0x000000000000000000000000000000000000000);
    function test() public pure {
        (uint256, uint256, uint256, uint256) memory result = MyContract.test.value(uint256(_Value203))(uint256(_Value206), uint256(_Value221));
    }
}
