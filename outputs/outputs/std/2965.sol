pragma solidity ^0.8.0;
contract Array {
    uint[] public arrayStorage;

    function getSize() public view returns (uint) {
        return arrayStorage.length;
    }

    function length() public view returns (uint) {
        return arrayStorage.length;
    }

    function getInt(uint index) public view returns (uint) {
        return arrayStorage[index];
    }

    function setInt(uint index, uint x) public {
        arrayStorage[index] = x;
    }

    function add(uint x, uint y) public returns (uint sum) {
        sum = x + y;
    }

    function sum(uint[] memory a) public view returns (uint sum) {
        sum = 0;
        for (uint i = 0; i < a.length; i = i + 1) {
            sum = sum + a[i];
        }
    }

    function print() public view {
        for (uint i = 0; i < arrayStorage.length; i = i + 1) {
            if (i!= arrayStorage.length - 1)
                print(" ");
            print(arrayStorage[i]);
        }
    }

    function updateSizeTo(uint newSize) public {
        require(getSize() < newSize, "Size too small");
        uint[] storage new = arrayStorage;
        arrayStorage = new;
    }
}
