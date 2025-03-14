pragma solidity ^0.8.0;
contract SemanticArrayEquality_ArrayMutations1
{
    uint42[] public a;
    constructor() {
        a[0] = uint42(a[0]);
    }
}

pragma solidity ^0.8.0;
contract SemanticArrayEquality_ArrayMutations3
{
    uint8[] public a;
    constructor() {
        a[0] = uint8(a[0]);
    }
}
