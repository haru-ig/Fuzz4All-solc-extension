pragma solidity ^0.8.0;
contract ModificationWithAssignmentWithMutation {
    struct TestStruct {
        uint data;
    }
    uint8[] public fieldBinary;
    TestStruct public fieldTestStruct;
    constructor(uint8[] memory initialBinary) public {
        fieldBinary     = initialBinary;
        fieldTestStruct = TestStruct({data: 1});
    }
    function getTestStruct() public view returns(TestStruct) {
        return TestStruct {data: 0};
    }
    function Binary_Array_With_Assignment_And_Mutation() public returns(uint8) {
        fieldBinary[0] = 1;
        TestStruct memory temp = fieldTestStruct;
        fieldTestStruct = TestStruct({data: 0xFF});
        fieldTestStruct = temp;
        return fieldBinary[1];
    }
}
