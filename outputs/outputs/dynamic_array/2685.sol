pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations35
{
    uint x;
    uint[9] y;
    int z;
    uint w;
    constructor() public {
        try x(25 * 25);
        {
            x <= 25 * 25;
            assert(y[42] == 0);
        }
        return;
    }
}

pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations36
{
    uint[9] y;
    int z;
    uint[2] a;
    constructor() public {
        try a[0]();
        a[4].push(a[0]);
        a[4].push(a[0]);
        r(a);
        a[0] = 1;
        return;
    }
}
