pragma solidity ^0.8.0;
contract Mutate16 {
    uint32 public immutable x;
    uint32 x = 1;
}
contract Mutate17 {
    uint256 x;
}
contract Mutate19 {
    uint32 x;
    Modifier noPublicModification() {
        x = x + 1;
        _;
    }
    uint256 public immutable x;
    uint32 x = 1;
}
contract Mutate20 {
    uint256 x;
    modifier noPublicModification() {
        x = x + 1;
        _;
    }
    uint256 public x;
}
