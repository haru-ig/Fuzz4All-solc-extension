pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity57_dynamic_73 {
    uint[2][8][4] public m;
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity57_dynamic_72 {
    uint[2][8][4] public m;
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity57_dynamic_71 {
    uint[2][8][4] public m;
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity57_dynamic_70 {
    uint[2][8][4] public m;
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity57ArrayAbiEncodingBug {
    uint[2][8][4] public m;
    function msetv071(uint[4][2][7] array1) {
        m[0][0][0] = array1[0][0][0];
        m[0][1][0] = array1[0][1][0];
    }
    function mgetv071() constant public returns (uint[4][2][7]) {
        return m;
    }
    operation mset (uint[8] array2, uint[7][2] array3, uint[2] array4, uint[3][4] array5, uint[2] array6, uint[2][2][8] array7) {
        m[0][array1[0]][array1[1]] = array1[2];
        m[1][array2[0]][array2[1]] = array2[2];
        m[2][array3[0][0]][array3[0][1]] = array3[2][0];
        m[3][array4[0]][array4[1]] = array4[2];
        m[4][array5[0][0]][array5[0][1]] = array5[2][0];
        m[5][array6[
