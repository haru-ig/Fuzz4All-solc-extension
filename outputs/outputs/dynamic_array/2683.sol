pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations34
{
    uint x;
    uint[9] y;
    constructor() public {
        x = 1;
        set(x);
        x -= 3;
        x -= 3;
        x -= 3;
        x -= 3;
        x -= 3;
        set(0);
        x *= 10;
        x *= 10;
        set(x);
        x++ = 1;
        x++ = 1;
        x++ = 1;
        set(0);
        x++;
        x++;
        x = 26;
        set(x);
        x += 1;
        x += 1;
        x += 1;
        x += 1;
        x += 1;
        x += 1;
        x += 1;
        x += 1;
        x += 1;
        x += 1;
    }

    function set(uint z) public {
        y[z] = x;
    }
}
