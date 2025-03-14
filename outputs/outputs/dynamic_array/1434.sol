pragma solidity ^0.8.0;
contract SemanticsEquivalentMutatedDynamicArrayVariableSizeAddAndAssigningAndInitialization14 {
    uint256[1][] @varArray;
    function MutatedFunction() public {
        varArray.push(0);
    }
}

pragma solidity ^0.8.0;
contract SemanticsEquivalentMutatedDynamicArrayVariableSizeAddAndAssigning20 {
    uint256[1][] @varArray;
    constructor() public {
        varArray.push(4);
    }
}

pragma solidity ^0.8.0;
contract SemanticsEquivalentMutatedDynamicArrayNestedCalldataArrayAbiReencoding18 {
    uint256[][][1] @nestedArray;
    function MutatedFunction() public {
        nestedArray[0].push(4);
    }
}


pragma solidity ^0.8.0;
contract SemanticsEquivalentMutatedDynamicArrayNestedCalldataArrayAbiReencoding19 {
    uint256[][][1] @nestedArray;
    uint32[2] @arrayLength;
    constructor() public {
        arrayLength[0] = 1;
        nestedArray[0][][0] = 1;
    }
}


pragma solidity ^0.8.0;
contract SemanticsEquivalentMutatedDynamicArrayNestedCalldataArrayAbiReencoding24 {
    uint256[][][1] @nestedArray;
    uint15[2] arrayLength;
    constructor() public {
        arrayLength = 1;
        nestedArray[0][][0] = uint256(uint[](uint8[](nestedArray[0], uint256[](uint15[](int128[](uint[](uint[](2000)))))))));
    }
}

pragma solidity ^0.8.0;
contract SemanticsEquivalentMutatedDynamicArrayNestedCalldataArrayAbiReencoding35 {
    uint256[][][1] @nestedArray;
    uint_232 [2] arrayLength;
    constructor() public {
        arrayLength[0] = 1;
        arrayLength[1] = 1;
        nestedArray[0][][0] = uint_2000(uint[](uint8[](nestedArray[0
