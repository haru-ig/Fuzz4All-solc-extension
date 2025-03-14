pragma solidity ^0.8.0;
contract SemanticsEquivalentMutatedDynamicArrayTypeCheck19 {
    uint256[][] private array2;
    function MutatedFunction() public {
        array2.push(new uint256[2][] (2));
    }
}
