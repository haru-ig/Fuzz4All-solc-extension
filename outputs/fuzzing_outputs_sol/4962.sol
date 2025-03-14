pragma solidity ^0.8.0;
contract Fallback {
    struct TestStruct {
        uint id;
        bytes32 content;
    }

    TestStruct storage testStruct = TestStruct({ id: 1, content: "abc" });

    function fallback(address) external {
        uint i = testStruct.id;
        bytes32 s = testStruct.content;
        delete testStruct;
        emit TestStructDeleted(i, s);
    }

    event TestStructDeleted(uint id, bytes32 content);
}
