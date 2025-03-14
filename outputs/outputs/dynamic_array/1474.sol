pragma solidity ^0.8.0;
contract MutatedSemanticsEquivalentEfficientDynamicArrayType2 {
    uint256[2][3][4][][][] private array3;
    function Efficient() public {
        uint k = 1;
        uint j = 1;
        uint i = 1;
        for (uint a = 0; a < 10; a++) {
                for (uint b = 0; b < 3; b++) {
                    for (uint c = 0; c < 3; c++)
                    {
                        array3[i][j][k][a][b][c][a] = 0;
                    }
                }
            k = 1;
            j = 1;
            i = 1;
        }
    }
}
