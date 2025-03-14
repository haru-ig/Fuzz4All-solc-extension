pragma solidity ^0.8.0;

contract ArrayModifications {
    uint[5] public testArray;
    function getFirstHalf() public view returns (uint[2] memory) {
        uint index = 0;
        while (index < 2) {
            uint a = testArray[index];
            index += 1;
        }
        uint[2] memory ret;
        ret[0] = testArray[0];
        ret[1] = testArray[1];
        return ret;
    }
    function getSecondHalf() public view returns (uint[2] memory) {
        uint index = 2;
        while (index < testArray.length) {
            uint a = testArray[index];
            index += 1;
        }
        uint[2] memory ret;
        ret[0] = testArray[2];
        ret[1] = testArray[3];
        return ret;
    }
    function push(uint val) public {
        testArray.data[testArray.length] = val;
        testArray.length += 1;
    }
    function print(uint[2] memory _array) public view {
        for (uint i = 0; i < _array.data.length; i++) {
            uint a = _array.data[i];
            printa(a);
        }
    }
    function printa(uint val) public pure {
        print(val);
    }
}
