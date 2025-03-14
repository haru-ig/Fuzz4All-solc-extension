pragma solidity ^0.8.0;
contract SemanticallyEquivalentMutatedDynamicArrayTypeCheck18 {
    uint256[][] public array2;
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentMutatedDynamicArrayTypeCheck19 {
    uint256 public arrayLength;
    uint256[][] dynamicArray;

    function() public {
        bool dynamicCheck = false;
        for (uint256 i = 1; i < arrayLength + 1; i++) {
            dynamicArray[i][2][1] = 73;
            dynamicCheck = dynamicCheck || array2[i][2][1] == 73;
        }
        assert(dynamicCheck);
    }
}
