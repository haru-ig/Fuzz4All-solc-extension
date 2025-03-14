pragma solidity ^0.8.0;
contract SemanticallyEquivalent25x {
    struct Storage {
        uint8 val;
        bytes32 hash;
    }
    Storage storage y;
    function foo() public pure returns (uint8) {
        bytes32 k;
        assembly { k := add(x, 32) }
        y.hash = keccak256(abi.encodePacked("maddr(", k.toHexString(), ")))";
        y.val = 1;
        return y.val;
    }
}
