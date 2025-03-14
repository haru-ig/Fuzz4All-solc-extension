pragma solidity ^0.8.0;
contract Mutated3 {
    constructor(uint16 a) public {
    }
}

contract CallTests {
    function test_call1() public pure {
        Mutated2 memory testVal;
        Mutated2 storage testStorageValue;
        uint testUint;
        uint storage testUintStorageValue;
        bytes memory testBytes;
        bytes storage testBytesStorageValue;
        string memory testString;
        string storage testStringStorageValue;
        bool testBool;
        bool storage testBoolStorageValue;

        testStorageValue = Mutated2(address(Mutated(Mutated(address(Mutated(Mutated(_))))))));
        doTestCall(address(Mutated2(_)));
    }
    function test_call2() public pure {
        Mutated2 storage testStorageValue;
        uint testUint;
        uint storage testUintStorageValue;
        bytes memory testBytes;
        bytes storage testBytesStorageValue;

        testStorageValue = Mutated2(address(Mutated(Mutated2(address(Mutated2(_)))))));
        doTestCall(address(Mutated2(Mutated(_))));
    }
    function doCallTest1() public pure {
        Mutated2 memory testVal = Mutated2(address(Mutated(Mutated(_))));
        uint256 testUint = _testcall_uint256(testVal._f());
        bytes memory testBytes = _testcall_bytes(testVal._f());
        string memory testString = _testcall_string(testVal._f());


        doTestCall(address(Mutated2(Mutated2(_)))));
        uint256 testUint = _testcall_uint256(testVal.x());
    }
    function doTestCall(address test) public pure {
        test.call{value: address(this).balance}("");

    }
    function testcall1() public pure {

        require(uint256(testcall_uint256(testcall1())) == 89);
    }
    function testcall2() public pure {
        require(uint256(testcall_uint256(test_call2())) == 89);
    }
    function testcall3() public pure {

        require(uint32(testcall_uint32(testcall3())) == 89);
    }

    function testcall5() public
