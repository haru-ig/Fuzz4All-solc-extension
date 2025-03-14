pragma solidity ^0.8.0;


contract ArrayContract {
    mapping(uint256 => bytes32[]) public myMemoryArray;

    function add(uint256 val) public {
        uint256[] memory array = new uint256[](2);
        array[0] = val;
        array[1] = val;
        memoryLengthCheck(array[0]);
        myMemoryArray[val] = array;
    }

    function addMany(uint256[] memory array) public {
        for (uint256 i = 0; i < array.length; i++) {
            memoryLengthCheck(array[i]);
        }
        myMemoryArray[val] = array;
    }

    function getArray(uint x) public view returns (bytes32[] memory) {

        return myMemoryArray[x];
    }

    function memoryLengthCheck(uint256 val) private pure {}
}
