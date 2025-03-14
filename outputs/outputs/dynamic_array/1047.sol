pragma solidity ^0.8.0;
contract ArrayMutation {
    bool[255] private _boolWithNullPointer;
    bytes[999] private _bytesWithNullPointer;
    uint256[999] private _uint256WithNullPointer;
    event ArrayMutation();
    event SetBoolWithNullPointer(bool _boolWithNullPointer);
    event SetBytesWithNullPointer(bytes _bytesWithNullPointer);
    event SetUint256WithNullPointer(uint256 _uint256WithNullPointer);
}

contract TestContract {
    function run(uint8 a) public {

        uint8[] memory array = new uint8[](10);
        array.length = 0;
        assert(array[0] == 0 && array.length == 0);
        array[1] = 1; assert(array.length == 1 && array[1] == 1);
        array.length += 1;
        assert(array.length == 2 && array[0] == 0 && array[1] == 1);
        array[0] = 2; assert(array[0] == 2);
        assert(array.length == 2);


        ArrayMutation memory arrayMutation = new ArrayMutation();
        arrayMutation.setBytesWithNullPointer(new bytes(()));
        assert(abi.encodePacked(arrayMutation) == "");


        bytes memory bytes = "abc";
        arrayMutation.setBytesWithNullPointer(bytes);


        uint256[] memory uint2561Array = new uint256[](10);
        uint2561Array.length = 0;
        uint2561Array[1] = 1;
        uint2561Array.length += 1;
        uint2561Array[0] = 2;
        arrayMutation.setUint256ArraysWithNullPointerForReason(uint2561Array);
        arrayMutation.setBytesWithNullPointer(bytes);
        assert(abi.encodePacked(arrayMutation) == bytes.length * 36 - bytes.length +
