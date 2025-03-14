pragma solidity ^0.8.0;
contract ArrayMutationsBis4a {
    uint256[2][] public arrayOfIntegers;
    uint256[3][] public arrayOfIntegers2;
    uint256 currentLength;
    uint256 value;
    uint256 value2;
    function addNewIntegers() public {
        uint256[2] memory newIntegers = [1, 4];
        uint256[3] storage array3 = arrayOfIntegers;
        uint256[3] memory array4 = [5, 6];
        arrayOfIntegers[13] = newIntegers;
        arrayOfIntegers[34 + 1] = array3;
        arrayOfIntegers[65 + 1] = array4;
        currentLength = 33 + 1;
        value = 1 + newIntegers[1];
        v1 = v1 + newIntegers[0];
        value2 = 2 + 2 * newIntegers[0] + 2 * newIntegers[1] + value;
        value2 += 2;
        arrayOfIntegers2[13] = 2;
        arrayOfIntegers2[13][0] = value;
        arrayOfIntegers2[34] = v1;
        arrayOfIntegers2[34 + 1] = v2;
    }
}
