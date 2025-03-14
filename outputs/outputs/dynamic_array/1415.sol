pragma solidity ^0.8.0;
contract SemanticsEquivalentMutatedDynamicArrayTypeCheck19 {
    uint256[][] mutatedArray1;

    function resetArray(uint _length) public {
        array1.length = 1;
        array1[0] = new uint256[](1);
        array1[0][0] = 1;
    }
}
