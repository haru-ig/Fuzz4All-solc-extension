pragma solidity ^0.8.0;
contract SemanticsEquivalentMutatedDynamicArrayTypeCheck22 {
    uint256[2][3][][][4][] private array4;
    function MutatedFunction() public {
        for (uint i = 0; i < 33; i++) {
            array4.push(new uint256[2][3][][4][](i));
        }
    }
}
