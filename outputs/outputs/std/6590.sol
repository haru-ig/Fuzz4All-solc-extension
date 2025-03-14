pragma solidity ^0.8.0;
contract Mutate16 {

    uint256 public x;

    modifier noPublicModification() {
        x = x + 1;
        uint256 x = x + 2;
        _;
    }

}
