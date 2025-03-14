pragma solidity ^0.8.0;


contract SemanticsEquivalentMutatedDynamicArrayTypeCheck20 {
    function MutatedFunction() public {
        uint256[1] memory temporaryStorage;
        temporaryStorage.length = 2;
        temporaryStorage[0] = 2;
        array2.push(temporaryStorage);
    }
}

pragma solidity ^0.8.0;
contract SemanticsEquivalentMutatedDynamicArrayTypeCheck21 {
    uint256[][] private array2;
    function MutatedFunction() public {
        array2.push(new uint256[](2));
    }
}
