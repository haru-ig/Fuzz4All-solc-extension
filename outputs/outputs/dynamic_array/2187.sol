pragma solidity ^0.8.0;
contract SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_21{
    uint128[] public arrayOne;
    uint48[] public arrayTwo;
    mapping(address => uint48[][]) public mappings;
}

pragma solidity ^0.8.0;
contract SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_20{
    struct Container{uint i1; uint i2; uint i3; uint i4; uint i5;}
    uint[] public arrayOne;
    uint[] public arrayTwo;
    mapping(address => uint[]) public mappings;
    uint x;
    constructor()public{
        uint s = 0;
        arrayOne.push(uint(s));
        mappings[msg.sender].push(uint(s));
        for(uint i = 0; i < 2; i++) arrayOne.push(uint(s));
        mappings[msg.sender].push(uint(s));
    }
}
pragma solidity ^0.8.0;
contract SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_19{
    struct Container {uint i; uint j; uint k; uint l; uint m;}
    uint[] public arrayOne;
    uint[] public arrayTwo;
    mapping(address => uint[]) public mappings;
    uint x;




    constructor()public{
        uint s = 0;
        Container container = Container(uint(s));
        arrayOne.push(uint(s));
        mappings[msg.sender].push(uint(s));
        arrayOne.push(uint(s));

        mappings[msg.sender][1].push(uint(s));
        mapping(Container) storage containerStorage = mappings[msg.sender][2];
        containerStorage.push(container);
    }
}
pragma solidity ^0.8.0;
contract SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_18{
    struct Container {uint i; uint j; uint k; uint l; uint m;}
    uint[] public arrayOne;
    uint[] public arrayTwo;
    mapping(address => uint[]) public mappings;
    uint x;
    uint128
