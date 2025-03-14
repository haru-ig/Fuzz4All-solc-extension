pragma solidity ^0.8.0;


pragma solidity ^0.8.0;
contract SemanticallyEquivApp {
    address public owner;

    uint8[3] public testArray;
    mapping(address => uint16) public testMap;
    mapping(uint8 => address) public testMap2;
    bool testBool;
    bytes1[] testBytes;
    uint32 public testUint32;
    uint storage myVar;


    function getTestBool() view returns (bool) {
        return testBool;
    }
    function getTestBytesSize() view returns (uint) {
        return testBytes.length;
    }
    function getTestArrayLength() view returns (uint) {
        return testUint32.length;
    }
    function getTestArr() view returns (uint[]) {
        return testArray;
    }
    function getTestMap() view returns (uint16[3] memory) {
        return storage.getUint16arr(0x70);
    }
    function getTestMap2() view returns (bytes1 memory) {
        return storage.getBytes1arr(0x80);
    }
    function getTestStr() view returns (bytes memory) {
        uint length = testUint32.length + testStr.length;
        uint end = memory.slot();
        assembly {
            storage := mload(0x40)
            mstore(end, add(memload(add(storage, 0x0)), 0x40))
            mstore(add(end, 0x40), mload(testStr.slot()))
        }
        return bytes(testStr);
    }
    function getTestuint32() view returns (uint32) {
        return storage.getUint32(0x90);
    }


    function setTestBool(bool val) {
        testBool = val;
        emit TestBool();
    }
    function setTestBytesSize(uint val) {
        testBytes.length = val;
        emit TestBytes();
    }
    function setTestArrayLength(uint val) {
        testUint32.length = val;
        emit TestUint32();
    }
    function setTestUint32(uint32 val) {
        testUint32 = val;
        emit TestUint32();
    }
    function setTestArray(uint[] memory val) {
        testArray = val;
        emit TestArr();
    }


    event TestBool();
    event TestBytes();
    event TestUint32();
    event TestArr();
constructor() {
    owner = msg.sender;
}
    function setTestMap2(bytes1 val) {
        testMap2[0] = val;
        emit TestMap2();
    }
    function setTestMap(uint16[3] memory val
