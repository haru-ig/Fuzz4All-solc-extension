pragma solidity ^0.8.0;
contract SemanticEquivalence_NestedDynamicallySizedDynamicArrayAssignment_19_ {

    SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_22 public nestedContract = new SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_22();

    constructor() {
        nestedContract.arrayOne = new uint[](0);
        nestedContract.arrayTwo = new uint[](0);
        mappings[keccak256(abi.encodePacked("0x"))] = new uint[](0);
    }
    function nestedMethod() public {
        uint[] memory newArrayOne;
        uint[2] memory nestedArray;
        uint[] public arrayOne = new uint[](0);
        uint[] public arrayTwo = new uint[](0);


        newArrayOne.push(nestedArray);
    }
}
