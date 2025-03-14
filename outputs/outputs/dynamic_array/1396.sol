pragma solidity ^0.8.0;

contract NoSemiEquivalents75 {
    using SemanticallyEquivalentMutatedDynamicArrayTypeCheck16 for uint[];

    constructor(uint[][] memory m) {
        array2 = m;
    }
}
