pragma solidity ^0.8.0;
contract Array {

    uint256 length;

    uint256[] myArray;


    constructor(uint256 _length) public {

        length = 0;

        length = _length;

        myArray = new uint256[](length);
    }

    function length() public view returns (uint256) {

        return length;
    }

    function myArray(uint256 i) public view returns (uint256) {

        require(i < length);

        return myArray[i];
    }

    function getArray(address addr) public view returns (uint256[] memory) {
        uint256[] memory array = new uint256[](length);
        address a;
        a = addr;
        uint256 j;


        j = 0;

        while (j < length && (a.read(j * 32 + 2 * 20) == j * 32 + 2 * 20)) {

            array[j] = uint256(a.read(j * 32));

            j++;
        }
        return array;
    }

    function sumOfNumbers() public view returns (uint256) {

        uint256 sum = 0;
        for (uint256 i; i < length; i++) {
            sum = sum + myArray[i];
        }
        return sum;
    }

    function setElement(uint256 i, uint256 element) public {

        require(i < length);

        myArray[i] = element;
    }

    function getElements() public view
