pragma solidity ^0.8.0;



contract SemanticCheckMutated extends SemanticCheckSemanticsCorrect {
    constructor() { }

    function mutatedAdd(uint a, uint b) public returns (uint) {
        uint result;
        assembly {
            unchecked {
                result := add(a, b)
                result := add(b, a)
            }
        }
        return result;
    }
}


contract SemanticCheckMutatedConstructorCalls {
    uint[] public someData;

    constructor(uint[] memory someData) public {
        this.someData = someData;
    }
}

contract SemanticCheckMutatedStateCalling {
    address public testContract;
    uint[] private public someData;

    constructor () public {
        testContract = msg.sender;
        someData = new uint[](1);
        someData[0] = 1;
    }

    function readStateAndCall() public {
        while(false) {
            someData[0];
        }
    }

    function resetInMemoryState() public {
        for (uint i = 0; i < someData.length; i += 1) {
            someData[i] = 2;
        }
        return;
    }

    function sendMutatedStateToCaller(uint[] memory someData) public {
        while(false) {
            someData[0];
        }
    }
}

contract SemanticCheckMutatedStorage {
    address public testContract
