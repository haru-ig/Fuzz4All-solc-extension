pragma solidity ^0.8.0;

contract Sensitive1 {
    struct TestStruct {
        uint value1;
        uint value2;
    }

    function test() private pure returns(TestStruct memory) {
        TestStruct memory testStruct;
        testStruct.value1 = 1200;
        testStruct.value2 = 1200;
        return testStruct;
    }
}


pragma solidity ^0.8.0;
contract Sensitive14 {
    function test() public pure returns(uint) {
        return Sensitive1.test().value2;
    }
}
