pragma solidity ^0.8.0;
contract SemanticallyEquivalentMutatedDynamicArrayTypeCheck16 {
    uint256[][] public array;
}
contract SemanticallyEquivalentMutatedDynamicArrayTypeCheck15 {
    uint256[][]array = new uint256[1][2][3][4][5][6][7][8][9][10][11];
}
contract SemanticallyEquivalentMutatedDynamicArrayTypeCheck14 {
    uint256[][][1][2][3][4][5][6][7][8][9][10][11] a;
}
contract SemanticallyEquivalentMutatedDynamicArrayTypeCheck13 {
    uint256[1][][2][3][4][5][6][7][8][9][10][11] a;
}
contract SemanticallyEquivalentMutatedDynamicArrayTypeCheck12 {
    uint256[][][1][2,3][4,5][6][7][8][9][10][11,12] a;
}
contract SemanticallyEquivalentMutatedDynamicArrayTypeCheck11 {
    uint256[][][1][2,3][4,5][6][7,8][9][10][11][12] a;
    a[0][0][0][0][0][0][0][0][0][0][0][12] = new uint256[](0);
}
contract SemanticallyEquivalentMutatedDynamicArrayTypeCheck10 {
    uint256[][] b = new uint256[100][100];
    b[10][10] = 0;
}
contract SemanticallyEquivalentMutatedDynamicArrayTypeCheck9 {
    uint256[][][1][] a = new uint256[1][2][3][4][5][6][7][8][9][10,11][12][2];
}
contract SemanticallyEquivalentMutatedDynamicArrayTypeCheck8 {
    uint256[][][10] a = new uint256[10][20][30][40][50][60][70][80][90][100][110][120][130][140][150];
    a[0][0][0][0][0][0][0][10][10][10] = 0;
}
contract SemanticallyEquivalentMutatedDynamicArrayTypeCheck7 {
    uint256[100][200][300][400][500][600][700][800][90
