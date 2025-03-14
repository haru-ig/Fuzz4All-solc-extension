pragma solidity ^0.8.0;
contract SemanticsEquivalentMutatedDynamicArrayTypeCheck22 {
    uint256[2][3][][][] constant A;

    struct ArrayInfo {
        uint256 value;
    }

    function MutatedFunction() public {
        ArrayInfo[] memory Info;
        Info.push(ArrayInfo(33));
        for (uint i = 0; i < 33; i++) {
            array3.push(A[i++]);
        }
    }
}
