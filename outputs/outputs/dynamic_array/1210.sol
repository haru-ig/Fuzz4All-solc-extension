pragma solidity ^0.8.0;
contract MutatedSemanticIndependenceMutatedSemanticIndependenceMutatedSemanticIndependence {
    uint8 accounts;
}


pragma solidity ^0.8.0;
contract MyContract {
    struct MutatedSemanticIndependenceWrapper {
        MutatedSemanticIndependence myNestedSolidityStruct;
        uint8 myNestedArray;
        uint8 myNestedDynamicArray[2];
        uint8 myDynamicArray[2][2];
        uint8 myDynamicArrayTwoIndexes[2,2];
        uint8 myDynamicArrayOneIndexedWithZeroLength;
        uint8 myDynamicArrayWithNewKeyword;
        uint8 myDynamicArrayWithPre filling of array values;
    }
    MutatedSemanticIndependenceWrapper storage wrapper;
    constructor() {
        wrapper = MutatedSemanticIndependenceWrapper({
            myNestedSolidityStruct: MutatedSemanticIndependence(0),
            myNestedArray: 0,
            myNestedDynamicArray: new uint8[](2),
            myDynamicArray: new uint8[2][2],
            myDynamicArrayTwoIndexes: new uint8[2, 2],
            myDynamicArrayOneIndexedWithZeroLength: 0,
            myDynamicArrayWithNewKeyword: 0,
            myDynamicArrayWithPre filling of array values: 0
        });
    }
    function foo() private pure returns (uint8) {
        return 0xa7;
    }
    function bar(uint8 x) public pure {
        wrapper.myNestedSolidityStruct.myNestedArray++;
    }
    function boom() public pure pure {
        wrapper.myNestedSolidityStruct.myNestedDynamicArray[foo()]++;
        wrapper.myNestedSolidityStruct.myNestedDynamicArray[foo()]++;
        wrapper.myNestedSolidityStruct.myNestedDynamicArray[foo()]++;
        wrapper.myNestedSolidityStruct.myNestedDynamicArray[foo()]++;
        wrapper.myNestedSolidityStruct.myNestedArray++;

        wrapper.myDynamicArrayTwoIndexes[5,99];
        wrapper.myDynamicArrayTwoIndexes[6,6];
        wrapper.myDynamicArrayTwoIndexes[6,123];
        wrapper.myDynamicArrayOneIndexedWithZeroLength++;
        wrapper.myDynamicArrayTwoIndexes[2,4];
    }
    function boom2() public pure pure {
        wrapper.myDynamicArray[0][foo()]++;
        wrapper.
