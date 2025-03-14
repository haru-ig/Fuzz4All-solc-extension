pragma solidity ^0.8.0;
contract MutatedArray12_solidity {
    uint256[] public arrayOf1;
    uint256[] public arrayOf2;
    uint256[] public arrayOf3;
    uint256[] mutatedA = arrayOf2;
    uint256[] mutatedB = arrayOf3;
    uint256[] mutatedC = mutatedA;
    modifier Mutate_array(uint256[] memory arrayOf1) {
        arrayOf1 = mutatedA;
        mutatedA = mutatedB;
        mutatedB = mutatedC;
        mutatedC = arrayOf1;
        arrayOf1 = mutatedA;
        mutatedA = mutatedB;
        mutatedB = mutatedC;
        mutatedC = arrayOf1;
        _;
        arrayOf1 = mutatedA;
        mutatedA = mutatedB;
        mutatedB = mutatedC;
        mutatedC = arrayOf1;
        arrayOf1 = mutatedA;
        mutatedA = mutatedB;
        mutatedB = mutatedC;
        mutatedC = arrayOf1;
    }
    function MutatedArray() {
        array1 = arrayOf2;
        array2 = arrayOf3;
        array3 = arrayOf1;
    }
}
