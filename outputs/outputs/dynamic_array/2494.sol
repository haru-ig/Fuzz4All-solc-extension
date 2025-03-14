pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_df14174d706b62f08d3e87ef33b34cc9ed09dbdc
{
    uint[]  x;
    uint[]  y;
    uint[1]  z;
    uint x2;

    constructor (uint p1) public {
        x2 = 0;
        z[0] = p1;
    }
    function f() public returns((uint ret, uint[] memory ret2)){
        if (x2 == 0) {
            x[0] = x2;
        }
        ret = x[0] + z[0];
        ret2 = x;
    }
}
