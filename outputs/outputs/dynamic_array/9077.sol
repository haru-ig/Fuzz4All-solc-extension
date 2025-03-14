pragma solidity ^0.8.0;
interface IAddressable {
    function store(uint256 value) external payable;
}

contract Test {
    struct TestStruct {
        uint256 myUint;
        uint256 myUint2;
    }
    struct MyStruct {
        address myAddr;
        address myAddr2;
        TestStruct myStruct;
    }
    uint a;
    uint b;
    event MyEvent(uint a);
    address payable b;
    mapping(uint => IAddressable) store;
    TestStruct testMyStruct;
    MyStruct myMyStruct;

    constructor() {
        store[2000].store(1000);
        testMyStruct = TestStruct(3, 4);
    }

    function setMyStruct() public payable {

    }

    function() external payable {

    }

    function setAddr() public {

    }
}
