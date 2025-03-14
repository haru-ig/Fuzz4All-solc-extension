pragma solidity ^0.8.0;
contract SemanticsEquivalentMutatedDynamicArrayTypeCheck21 {
    uint256[3][2][][] private array3;
    function MutatedFunction() public {
        array3.push(new uint256[2][2][][](3));
    }
}


pragma solidity ^0.8.0;
contract SemanticsEquivalentDynamicArrayTypeCheck23 {
    uint256[42][] private array4;
    function MutatedFunction() public {
        array4.push(new uint256[](1));
    }
}
