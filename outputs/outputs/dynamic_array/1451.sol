pragma solidity ^0.8.0;
contract SemanticsEquivalentMutatedDynamicArrayTypeCheck21 {
    uint256[][][][] private array2;
    function MutatedFunction() public {
        array2.push(new uint256[2][3][][](2));
    }
}

pragma solidity ^0.8.0;
contract SemanticsEquivalentMutatedDynamicArrayTypeCheck22 {
    uint256[2][3][][] public array3;
    function MutatedFunction() public {
        array3.push(new uint256[2][3][][](3));
    }
}
