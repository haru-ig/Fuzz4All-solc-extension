pragma solidity ^0.8.0;
contract OverridingCopyNonMutability {
    uint256[] private nonMutatedNonFixedArray;
    uint256[] private nonMutatedFixedArray;
    constructor() public {
        nonMutatedNonFixedArray = new uint256[](3);
        for (uint256 i = 0; i < nonMutatedNonFixedArray.length; i++) {
            nonMutatedNonFixedArray[i] = 0;
        }
        nonMutatedFixedArray = new uint256[](2);
        nonMutatedFixedArray[0] = 0;
        nonMutatedFixedArray[1] = 0;
    }
    function nonMutatedAddOneNoInitAndNoCopy(uint256 value) public {
        nonMutatedNonFixedArray[1] += value;
    }
    function nonMutatedAddOneAndCopy(uint256 value) public {
        nonMutatedFixedArray[0] += value;
    }
    function nonMutatedAddOneAndCopyAndInit(uint256 value) public {
        nonMutatedFixedArray[0] += value;
        nonMutatedFixedArray[1] = 0;
    }
    function nonMutatedFixOneAndCopy(uint256 value) public {
        nonMutatedFixedArray[0] = value;
    }
    function nonMutatedFixOneAndCopyAndInit(uint256 value) public {
        nonMutatedFixedArray[0] = value;
        nonMutatedFixedArray[1] = 0;
    }
}
