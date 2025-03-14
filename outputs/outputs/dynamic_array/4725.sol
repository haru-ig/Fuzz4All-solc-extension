pragma solidity ^0.8.0;
contract Test {
    mapping(uint => uint256) public store;
    uint stored;
    function MutateData() public {
        stored += 7;
        stored -= 8;
        require(stored == 10, "FAIL0");
        require(store[15] == 14, "FAIL1");
        stored += 27;
        stored -= 12;
        require(stored == 30, "FAIL2");
    }
}
contract Test {
    function MutateData() public {
        emit SomeEvent(true);
    }
    struct TestEvent {
        bool b;
    }
    event SomeEvent(bool b);
}
contract Test {
    struct TestStruct {
        uint x;
        bytes y;
        bool z;
    }
    function MutateStruct() public {
        TestStruct memory s;
        s.x = 1;
        s.y = "hello world";
        s.z = false;
        store[1] = s;
        require(bytes(store[1]) == "\x01", "FAIL0");
        require(store[14] == false, "FAIL1");
    }
}
pragma solidity ^0.8.0;
contract Test {
    mapping(uint => uint256) public store;
    struct TestStruct {
        uint x;
        bytes y;
    }
    TestStruct memory s;
    {
        s.x = 1;
        s.y = "hello world";
        store[1] = s;
        bytes memory stored = bytes(store[1]);
        require(stored == "\x01", "FAIL0");
    }
}
