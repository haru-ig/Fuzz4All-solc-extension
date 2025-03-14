pragma solidity ^0.8.0;
contract SemanticsEquivalentEfficientDynamicArrayType3 {
    uint256 private myArray[10];
    function Fatal() public {
        do {
            myArray[myArray.length] = 1;
        }
        while (myArray.length < 10);
        do {
            myArray[myArray.length - 1] = 1;
        }
        while( myArray.length > 10);
    }
}

pragma solidity ^0.8.0;
contract SemanticsEquivalentEfficientDynamicArrayType4 {
    bytes32[] public names;
    function Fatal() public {
        for (uint i = 0; i < 5; i++) {
            names.push("hi");
            for (uint j = 0; j < 4; j++) {
                names.push("hi");
            }
            for (uint j = 0; j < 4; j++) {
                names.pop();
            }
        }
    }
}
