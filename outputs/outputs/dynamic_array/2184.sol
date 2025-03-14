pragma solidity ^0.8.0;
contract SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_23{
    uint[] public arrayOne;
    uint[] public arrayTwo;
    mapping(address => uint[][]) public mappings;
}
pragma solidity =0.5.8;

contract SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_60 {
    function executeSemanticEquivalence(SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_22 storage testOne, SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_23 storage testTwo, uint256 testOneIn) public view returns (SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_21 storage returnObject){
        testOne.arrayOne.push(testOneIn);
        SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_22 memory testOneOut;
        testOneOut = testOne;
        testTwo.arrayOne.push(testOneOut.arrayTwo.pop());

        mappings[msg.sender].push(new uint[](1));
        mappings[0x7882000000000000000000000000000000000000].push(new uint[](2));
        mappings["0x7882000000000000000000000000000000000000"].push(new uint[](2));
        SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_23 memory testOneInOut;
        testOneInOut = testOne;
        testTwo.arrayTwo.pop();

        return testOneInOut;
    }
}
