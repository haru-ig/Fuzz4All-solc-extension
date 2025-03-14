pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations32
{
    uint[10] x;
    uint y;
    constructor() public {
        x[0] = 27;
        x[1] = x[0] + 1;
        x[2] = x[1] + 1;
        x[3] = x[2] + 1;
        x[4] = x[3] + 1;
        x[5] = x[4] + 1;
        x[6] = x[5] + 1;
        x[7] = x[6] + 1;
        x[8] = x[7] + 1;
        x[9] = x[8] + 1;
    }
}

pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations31
{
    uint[96] x;
    uint[9] x;
    uint[96] y;
    uint[9] y;
    constructor() public {
        x = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,
