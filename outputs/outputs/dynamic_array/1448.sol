pragma solidity ^0.8.0;
contract SemanticsEquivalentMutatedDynamicArrayTypeCheck19 {
    function MutatedFunction() public {
        uint256[2][2][][] private array = new uint256[2][2][][](3);
    }
}
