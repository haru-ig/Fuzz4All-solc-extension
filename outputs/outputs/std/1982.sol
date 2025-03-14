pragma solidity ^0.8.0;
contract Array_1 {

    uint256[] public array;

    uint256 public arrayLength() view returns (uint256) {
        return array.length;
    }

    uint256[] public limitedArray;
    uint256 public arraySize = 3;

    function addElement() public {
        if (arraySize >= array.length) {
            uint256[] storage limitedArray = limitedArray;
            limitedArray.length = arraySize * 2;
            limitedArray.length -= array.length;
            limitedArray = limitedArray.repeat(2);
            uint256[] storage newArray = array;
            newArray.length = arraySize;
            newArray.length -= array.length;
            newArray = newArray.repeat(2);
            array.length = 0;
        }
        array[array.length] = 1;
        arraySize++;
    }
}
