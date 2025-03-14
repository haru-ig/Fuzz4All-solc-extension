pragma solidity ^0.8.0;
contract MutatedSemanticsEquivalentEfficientDynamicArrayType2 {
    uint256[2][3][4][][][] private array3;
    function MutateArrays() public {
        for (uint i = 0; i < 10; i++) {
            for (uint j = 0; j < 3; j++) {
                for(uint k = 0; k< 3; k++) {

                    array3[2][2][2][][] memory t = array3[2][2][2][];

                    array3[i][j][k] = new uint256[2][2][2]();
                }
            }
        }
    }
}
