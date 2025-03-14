pragma solidity ^0.8.0;
contract EmbellishedMutatedMutatedMutatedMutated {
    uint8 public test = 3;
    modifier testMod (uint8 testNew) { test = testNew; return; }
    function myInit(uint8 testNew, uint256 a) public testMod(testNew) {
    }
}
