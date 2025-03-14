pragma solidity ^0.8.0;
interface I {
constructor(uint256 x) public {
    set2D([5, x]);
}
function set2D(uint256[rowCount][columnCount] memory array2D) public {
    uint256 i;
    for (i = 0; i < rowCount; i++) {
        for (uint256 j = 0; j < columnCount; j++) {
            set2DValues(array2D, i, j);
        }
    }
}
function set2DValues(uint256[rowCount][columnCount] memory array2D, uint256 rowIdx, uint256 colIdx) public {
}
}
