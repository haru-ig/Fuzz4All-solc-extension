pragma solidity ^0.8.0;
contract SemanticallyEquivalentMutatorWithoutNestedCallDataArrayAbiReencodingSizeValidationFixedAndPreviousContractAndLaterVersionBugReproduction {
    function mutatorTest() external {}
}
contract SemanticallyEquivalentMutatorWithoutNestedCallDataArrayAbiReencodingSizeValidationFixed {
    constructor(int256[] memory) public {
    }
    function mutatorTest() external {
    }
    int256[] public myArray;
}
contract SemanticallyEquivalentMutatorWithoutNestedCallDataArrayAbiReencodingSizeValidationPreviousContractAndLaterVersionBugReproduction {
    function mutatorTest() external {}
}
contract SemanticallyEquivalentMutatorWithoutNestedCallDataArrayAbiReencodingSizeValidationRetractedContractAndLaterVersionBugReproduction {
    function mutatorTest() external {}
}
contract SemanticallyEquivalentMutatorWithoutNestedCallDataArrayWithNestedStructAndEarlierVersionBugReproduction {
    function mutatorTest() external {}
}
contract SemanticallyEquivalentMutatorWithoutNestedCallDataArrayWithNestedStruct {
    struct Container {
        int256 x;
        uint z;
        uint w;
    }

    constructor(Container memory) public {
    }
    function mutatorTest() external {
    }
    Container[] public myArray;
}
contract SemanticallyEquivalentMutatorWithoutNestedCalldataArrayAbiReencodingSizeValidationAndEarlierVersionBugReproduction {
    function mutatorTest() external {}
}
