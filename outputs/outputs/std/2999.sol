pragma solidity ^0.8.0;
contract ArrayMutations {

    uint[] storage array = new uint[](10);
    modifier ifSet(uint index) {
        if (index in array) {
            _;
        } else {
            array.push(index);
        }
    }

    function push() public {
        if (_ifSet(uint(0) - 1)) array[uint(0) - 1] = 10;
    }

    function pop() public {
        if (_ifSet(uint(0) - 1)) array[uint(0) - 1] = 0;
    }
    function _ifSet(uint index) internal view returns (bool) {
        return index < staticData.size_arr - 1;
    }
}

pragma solidity ^0.8.0;
contract ArrayMutations {

    uint[] storage array = new uint[](10);
    modifier ifSet(uint index) {
        if (index in array) {
            _;
        } else {
            uint[] memory temp = new uint[](1);
            temp[0] = index;
            temp = getArray2(getSecondArrayPos(getPrev(temp)));
            temp.push(index);
            temp = deleteSecondArrayPos(getPrev(temp));
            array = setSecondArrayPos(temp, getSecondArrayPos(getPrev(temp)));
        }
    }

    function push() public {
        if (_ifSet(uint(0) - 1))

    }

    function pop() public {
        if (_ifSet(uint(0) - 1)) array[uint(0) - 1] = 0;
    }
    function getArrayPos() public returns (uint) {
        return uint(array[uint(0) - 1]);
    }
    function getPrev(uint[] memory index) public pure returns (uint[]) {
        uint[] memory prev = new uint[](2);
        prev[0] = index[uint(1) - 1];
        prev[1] = index[uint(0) - 1];
        return prev;
    }
    function getPrev2(uint[] memory arrayIndex) public pure returns (uint[] memory) {
        uint[] memory prev = new uint[](2);
        prev[0] = arrayIndex[uint(1) - 1];
        prev[1] = arrayIndex[uint(0) - 1];
        return prev;
    }
    function getPrev3(uint arrayIndex) public pure returns (uint[]) {
        uint[] memory prev = new uint[](2);
        prev[0] = arrayIndex + 2;
        prev[1] = arrayIndex + 1;
        return prev;
    }
    function getPrev4(uint[1] memory arrayIndex) public pure returns (uint) {
        uint prev = arrayIndex + 2;
        if (prev > 0) {
            prev = arrayIndex;
        }
        return prev;
    }
    function getCurr2(uint[] memory
