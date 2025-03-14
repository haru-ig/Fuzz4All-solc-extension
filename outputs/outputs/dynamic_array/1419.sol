pragma solidity ^0.8.0;
contract SemanticsEquivalentMutatedDynamicArrayTypeCheck19 {
    uint256[10] array;
}

contract SemanticsEquivalentDynamicArrayTypeCheck20 {
    function f() public {
        uint256[][] memory array1 = new uint256[15][];
        array1[10] = new uint256[5];
    }

    function g() public {
        uint256[][][6] memory array2 = new uint256[15][10][5];
        array2[25] = new uint256[10];
    }
}

contract SemanticsEquivalentMutatedDynamicArrayTypeCheck21 {
    uint256[6] array;
}

contract SemanticsEquivalentDynamicArrayTypeCheck22 {
    function f() public {
        uint256[9] array;
    }

    function g() public {
        uint256[9][] memory array;
        array[3] = new uint256[3];
    }
}
