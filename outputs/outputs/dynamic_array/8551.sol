pragma solidity ^0.8.0;
contract MutatedStructures {





    StructWithNestedArrays _data;

    modifier Test() {
        _;
        (uint256[] memory array1, uint[2] memory nestedInts) = _data.array1;
        uint256 s1 = _data.nestedInts[0];
        bool x = array1[0] > s1;
        _;
    }
}

pragma solidity ^0.8.0;

contract MutatedArrays {
    struct TestStruct {
        uint[5] uintArray;
        uint array[5][2];
    }

    TestStruct storage _data;




    modifier Test() {
        _;
        uint[] memory array1 = _data.uintArray;
        uint[2][5][] memory array2 = _data.array[0];
        uint[5] memory s1 = _data.uintArray[3];
        bool x = array1[0] > s1;
        _;
    }
}
