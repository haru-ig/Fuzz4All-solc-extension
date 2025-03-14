pragma solidity ^0.8.0;
contract Contract {

    bytes[] public array;


    bytes[256] public array256;


    uint256[] public arrayUint;


    int256[] public arrayInt;


    bytes[250][] public array256Slice;

    constructor() {
        uint256[] memory emptyArray = [];
        for(uint i=0; i<5; i++) {
            arrayUint.push(uint256(i));
            emptyArray.push(uint256(150));
        }

        bytes[] memory emptyArrayBytes = new bytes[](50);
        emptyArrayBytes[10] = "Hello";

        array.push(arrayUint);
        array.push(emptyArray);
        array.push(emptyArrayBytes);
        array.push(array256);
        array.push(array256Slice);
        array.push(arrayInt);

        uint256[0x100] memory emptyArrayUint = [];

        uint256[] memory emptyArrayCopyUint = new uint256[](5);

        uint256[0x100] storage emptyArrayStorageUint = [];

        for(uint i=0; i<5; i++) {
            arrayUint[i] = uint256(i);
            emptyArrayStorageUint[i] = uint256(150);
        }

        uint256[] storage emptyArrayCopyStorageUint = new uint256[](5);

        uint256[0x100] storage emptyArrayStorageCopyUint = [];
    }

    function set(uint256 index, uint256 value) public {
        arrayUint[index] = value;
    }

    function set256(uint256 index, bytes32 value) public {
        array256[index] = value;
    }

    function setSlice(uint256 index, bytes32[] memory slice) public {
        array256Slice[index] = slice;
    }

    function pushUint256() public {
        arrayUint.push(uint256(0xc7ffc7ffe));
        arrayUint.push(uint256(0xc7ffc7ffd));
    }

    function pushBytes32() public {
        array256.push("Hello world");
        arrayUint.push(bytes32(110));
        arrayUint.push(bytes32(45));
        arrayUint.push(bytes32(14));
    }

    function pushBytes() public {
        arrayUint.push(bytes("123"));
        arrayUint.push(bytes(142));
        arrayUint.push(bytes(35));
        arrayUint.push(bytes(253));
    }

    function pushInt256() public {
        arrayInt.push(-150
