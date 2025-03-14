pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedNestedDynamicallySizedNestedArrayAssignment_1{
    FunctionalEquivalence_MutatedNestedDynamicallySizedNestedArrayAssignment_2[] public array_;
    function method1(FunctionalEquivalence_MutatedNestedDynamicallySizedNestedArrayAssignment_2[] memory array) public {}
    constructor() public {
        array_[0] = FunctionalEquivalence_MutatedNestedDynamicallySizedNestedArrayAssignment_2(FunctionalEquivalence_MutatedNestedDynamicallySizedNestedArrayAssignment_2[]([]));
        array_[1] = FunctionalEquivalence_MutatedNestedDynamicallySizedNestedArrayAssignment_2(FunctionalEquivalence_MutatedNestedDynamicallySizedNestedArrayAssignment_2[]([0]));
    }
}
