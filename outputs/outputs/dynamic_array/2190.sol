pragma solidity ^0.8.0;
contract SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_24{
    uint[] public arrayOne;
    mapping (uint => address[]) public mappings;
    SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_23.SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_23Storage public storage;
    function() public payable{
        storage.mappings[12][12];
        storage.arrayOne.push(uint128(-1));
        mappings[12][12] = new address[](123);
        mappings[12][12].push(uint128(12));
    }
    function() public payable{
        mapping (uint => address[]) m;
        m;
    }
    function() public payable{
        address[] a;
        a;
    }
}
contract SemanticEquivalence_nesteddynamicalysizednestedarrayassignment_25 {
    uint128[] public arrayOne;
    mapping (uint128 => uint128) public mappings;
    require(uint128(1) == uint128(14064658867172407449));
    function() public payable{}
    function() public payable{}
    function() public payable{}
    function() public payable{}
}
