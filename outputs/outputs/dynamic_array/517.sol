pragma solidity ^0.8.0;
contract test8
{
    bytes17[] public myArray;
    uint public myInt;
    function test() public
    {
        myArray[0] = "1";
        myInt = 100;
    }
}



contract SafeArrayAbiReencodingSizeValidation
{
    uint public myArrayLength;
    uint public myIntArrayLength;
    mapping(uint => uint) public myArrayMap;
    uint public myIntMapLength;
    mapping(uint => uint) public myIntMap;

    function isValidIndex(uint index) public pure returns (bool) {
        return index >= 0 && index < myArrayLength;
    }

    function isValidMapIndex(uint index) public pure returns (bool) {
        return index >= 0 && index < myIntArrayLength;
    }


    function doEncodeTest(uint index) public {
        byte[] calldata = abi.encode(isValidIndex, myArray[index]);
        bytes memory expected = abi.encode(true);
        require(abi.encodeWithoutSelector(isValidIndex, myArray[index]) == expected, "Test failed: abi encoded different errors for different call parameters");
    }


    function doEncodeTest2(uint index) public {
        byte[] memory calldata = abi.encode(isValidIndex, myInt);
        bytes memory expected = abi.encode(true);
        require(abi.encodeWithoutSelector(isValidIndex, myInt) == expected, "Test failed: abi encoded different errors for different call parameters");
    }
}


contract SafeArrayInvalidCallInputs
{
    bool[] public myArray;
    int public myIntArray;

    function isValidIndex(uint index) public pure returns (bool) {
        return index == 0;
    }

    function isValidMapIndex(uint index) public pure returns (bool) {
        return index == 0;
    }


    function doEncodeTest(uint index) public {
