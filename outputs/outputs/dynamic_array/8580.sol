pragma solidity ^0.8.0;
contract SemanticsEquivalentMutatorWithoutNestedCallDataArrayAbiEncodingOptimizationAndEarlierVersionBugReproduction {
    constructor (int256[] memory _myArray) {
        uint49 myArrayLength = _myArray.length;
    }
    function mutatorTest() external {
    }
}



pragma solidity ^0.8.0;

 contract ArrayDynamicArrayReencodingSizeValidation {
    int256[] data;
    uint224[] data224;
    int721[] dataInt721;
    uint224[] data224Fixed;
    constructor() {}
    function testNoReencodingSizeValidation() public pure {}
    function testReencodingSizeValidation() public pure {}

    function testReencodingSizeValidationFixedData() public pure {}
    function testNoReencodingSizeValidationFixedData() public pure {}
}


pragma solidity ^0.8.0;



contract SemanticallyEquivalentTestMutators {
    constructor(uint256[] memory myArray) isMutator(myArray), isMutator(uint224(myArray)), isMutator(int256(myArray)), isMutator(uint224(uint224(myArray)))),
    TestNoReencodingSizeValidation(), TestReencodingSizeValidation(), TestReencodingSizeValidationFixedData(), TestNoReencodingSizeValidationFixedData() {

    }

    function isMutator(uint[] memArray) internal pure returns (bool) {
        int256[] memory int256 = new int256[](memArray.length);
        for (uint i = 0; i < memArray.length; ++i) {
            int256[i] = uint256(memArray[i]);
        }
        return true;
    }
    function isMutator(uint224[] memArray) internal pure returns (bool) {
        for (uint i = 0; i < memArray.length; ++i) {
            data224Fixed[i] = uint224(memArray[i]);
        }
        return true;
    }
    function isMutator(int256[] memArray) internal pure returns (bool) {
        for (uint i = 0; i < memArray.length; ++i) {
            if (memArray[i] < 0) {
