pragma solidity ^0.8.0;
contract SemanticallyEquivMutatedMutatedMutated {
    uint32 private test;
    uint256 private myInit(uint256 arg0, uint256 arg1) public {
        uint256 b = arg1;
        test = (arg0 + uint256((b * test) ^ (b * b)));
    }
}
