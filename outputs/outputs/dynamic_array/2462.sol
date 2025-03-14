pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_cb4649d4672a444d91de07bc762c112c855168947
{
    uint32[] x;
    function f() public {
        x.push(1);
        x.push(2);
        x.push(3);
        x.push(4);
        x[0] = x[0] + 1;
    }
}
