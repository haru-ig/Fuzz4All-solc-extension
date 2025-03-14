pragma solidity ^0.8.0;
contract TestMutator {
    uint256 public i;

    function method (uint8 j) public returns (uint8) {
        i = 1;
        i += 1;
        TestMutator testMutator;
        testMutator.set(i);
        bool a = i < 2;
        bytes32 a1 = i < 2;
        bool b;
        return b;
    }
}
