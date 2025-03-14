pragma solidity ^0.8.0;
contract SemanticMutation10 {
    uint16[10] public x;
    uint16[10][10] public y;
    y[0][1] += 10;
    y = y;
    x = x;
}
