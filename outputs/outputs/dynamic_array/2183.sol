pragma solidity ^0.8.0;
contract SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_23 {
    SemanticsEquivalence_NestedDynamicallySizedNestedArrayAssignment_NoMapping public instance0;

    function setInstance0(SemanticsEquivalence_NestedDynamicallySizedNestedArrayAssignment_NoMapping _instance0) external {
        instance0 = _instance0;
    }

    function getInstance0() view external returns (SemanticsEquivalence_NestedDynamicallySizedNestedArrayAssignment_NoMapping) {
        return instance0;
    }

    function call0() view external returns (uint[] memory, uint[] memory) {
        uint[] memory _array0_; uint[] memory _array1_;
        (uint[] memory _array0_, ) = instance0.getArray0();(_array0_ = _array0_)[_array0_.length] = 1;
        instance0.setArray0((uint[0]()), (_array0_,));

        (uint[] memory _array1_, ) = instance0.getArray1();(_array1_ = _array1_)[_array1_.length] = 1;
        instance0.setArray1((uint[0]()), (_array1_,));
        return (uint[0](), uint[0]());
    }

    struct SemanticsEquivalence_NestedDynamicallySizedNestedArrayAssignment_NoMapping {
        uint[] memory array0;
        uint[] memory array1;
    }

    uint[] public arrayOne;
    uint[] public arrayTwo;
}

pragma solidity ^0.8.0;
contract SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_24 {
    SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_23[] public instances;
    function setInstances(SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_23[] memory _instances) public {
        instances = _instances;
    }

    function getInstances() view public returns (SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_23[] memory) {
        return instances;
    }
}

pragma solidity ^0.8.0;
contract SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_25 {
    SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_24[] public instances;
    function setInstances(SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_24[] memory _instances) public {
        instances = _instances;
    }

    function getInstances() view public returns (SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_24[] memory
