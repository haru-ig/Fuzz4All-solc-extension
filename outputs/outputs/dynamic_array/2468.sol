pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_7e4a1024706c579461e870f4364ef8a178632eb0
{
    uint256[2][4] x;
    function f() public {
        x[0][0] = uint256(1);
        x[0][1] = uint256(2);
        x[0][2] = uint256(3);
        x[0][3] = uint256(4);
        for (uint256 i = 0; i < x.length; i++) {
            for (uint256 j = 0; j < x[i].length; j++) {
                if (i % 2 == 0) { x[i][j] = x[i][j] + 2; }
            }
        }
    }
}
