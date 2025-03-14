pragma solidity ^0.8.0;
contract SemanticsEquivalentDynamicArrayTypeCheck20 {
    uint256[2][][] private array3;
    function MutatedFunction() public {
        array3.push(new uint256[3][](3));
    }
}
