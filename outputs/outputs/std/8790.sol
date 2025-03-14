pragma solidity ^0.8.0;
contract TestArray {
    address public admin;
    address public[] public arrays[5];
    uint8 public index[5];
    uint256 public count;
    uint[] public bytes;
    uint[] public shortArray;
    address public shortArrayAddress;
    uint[] public uintArray;
    uint[][] public nestedArray;
    uint8[] public bytesArray;
    uint8[][] public bytes2Array;
    string[] shortStrings;

    constructor() public {
        admin = msg.sender;
    }

    function createArray() public{
        arrays[0] = msg.sender;
        index[0] = count;
        count += 1;
        assert(count > 0);
    }

    function createShortArray() public{
        shortArrayAddress = msg.sender;
        shortArray[0] = uint256(0xfffffffff);
        shortArray[1] = -1;
        shortArray[2] = -2;
        shortArray[3] = 1;
        shortArray[4] = 17;
        assert(shortArrayAddress == msg.sender );
        assert(byte(shortArray[0]) == bytes32(0xffffffffffffffff));
        assert(shortArray[1] == -1);
        assert(shortArray[2] == -2);
        assert(shortArray[3] == 1);
        assert(shortArray[4] == 17);
    }

    function assignArray() public {
        arrays[1] = msg.sender;
        index[1] = count;
        count += 1;
        assert(count > 1);
    }

    function assignNestedArray() public {
        nestedArray[0][0] = msg.sender;
        nestedArray[0][1] = 1;
        nestedArray[1][0] = msg.sender;
        nestedArray[1][1] = 2;
        assert( nestedArray[0][0] == msg.sender && nestedArray[0][1] == 1 );
    }

    function assignByteArray() public {
        bytesArray[0] = "Hello World".repeat(2);
        assert(bytesArray[0] == "Hello WorldWorld");
    }

    function pushByteArrayToByteArray() public {
        bytesArray[1] = bytesArray[0];
        bytesArray[0] = "Hello";
        bytesArray[1] = "World";
        bytesArray[0] = "!";
        bytesArray[0] = "!";
        bytesArray[0] = "!";
        bytesArray[0] = "!";
        assert(bytesArray[1] == "HelloWorld!");
    }

    function deleteByteArrayAtOffset() public {
        delete bytesArray[3];
        assert(bytesArray[3] == 0x68656c6c6f);
    }

    function pushArrayWithRandomBytes() public {
        uint256 length = bytes32(random() ^ block.timestamp);
        bytes memory buffer = new bytes(3 * length + 2);
        for (uint i = 0; i < buffer.length; i += 4) {
            bytes32 data = bytes32(random() ^ block.timestamp);
            bytes[i] = uint8(uint256(data));
            bytes[i + 1]
