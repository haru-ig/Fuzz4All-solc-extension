pragma solidity ^0.8.0;


contract SemanticEquivalence_NestedDynamicallySizedDynamicArrayAssignment_11{
    uint[] public arrayOne;
    uint[10] public arrayTwo;
}

pragma solidity ^0.8.0;
contract SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_21{
    bytes public arrayOne;

    bytes[3] public arrayTwo;
}

pragma solidity ^0.8.0;
contract SemanticEquivalence_NestedDynamicallySizedDynamicArrayAssignment_22{
    bytes public arrayOne;

    bytes[42] public arrayTwo;
}
