pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations_2
{
    address[] contract_members;
    bytes32[] contract_mem_keys;
    bool[] contract_mem_types;
    uint[] contract_mem_sizes;
    constructor() {
        uint[] storage_values;
        storage_values[0] = storage_values[1];
        uint c;
        c = storage_values[1];
    }
}
contract SemanticEquality_ArrayMutations_3
{
    uint[] public a;
    constructor() {
        a[a.length >= 2? 1 : 1] = a[a.length >= 2? 0 : 0];
    }
}
contract SemanticEquality_ArrayMutations_4
{
    uint[] public a;
    constructor() {
        a[a.length >= 2? 1 : 1] = a[1];
    }
}
contract SemanticEquality_ArrayMutations_5
{
    uint[] public a;
    constructor() {
        a[a.length >= 1? 1 : 2] = a[1];
    }
}
contract SemanticEquality_ArrayMutations_6
{
    uint[] public a;
    constructor() {
        a[a.length >= 1? 1 : 4] = a[1];
    }
}
contract SemanticEquality_ArrayMutations_7
{
    uint[] public a;
    constructor() {
        a[a.length >= 2? 1 : 2] = a[1];
    }
}
contract SemanticEquality_ArrayMutations_8
{
    uint[] public a;
    constructor() {
        a[a.length >= 4? 1 : 4] = a[1];
    }
}
contract SemanticEquality_ArrayMutations_9
{
    uint[] public a;
    constructor() {
        a.push(4);
        a.push(13);
    }
}
contract SemanticEquality_ArrayMutations_10
{
    uint[] public a;
    constructor() {
        a.push(4);
        a.push(13);
        a.push(4);
        a.push(2);
        a.push(6);
        a.push(4);
        a.push(13);
        a.push(4);
        a.push(13);
        a.push(2);
        a.push(6);
    }
}
