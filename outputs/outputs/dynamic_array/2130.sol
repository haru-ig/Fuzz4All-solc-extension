pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedNestedDynamicallySizedNestedArrayAssignment_5{
    uint256[] internal parentArray;
    uint256[][2] internal nestedArray;
    function foo() internal returns(uint256) {
        uint256 arrSize = 4;
        for(uint256 n = 0; n < arrSize; n++) {
            nestedArray[n] = [5, 6];
        }
        return get(nestedArray, 0);
    }
}
