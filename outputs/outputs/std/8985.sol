pragma solidity ^0.8.0;
contract ExampleStruct8 {
    uint16[2] array;
    constructor() {
        array = [0, 1];
    }
    function getMaxInt() public view returns (int) {
        return int(array[0]);
    }
    function getHighestInt() public view returns (int) {
        return int(array[1]);
    }
    function getLowestInt() public view returns (int) {
        return int(array[0]);
    }
    function changeMaxValue() public {
        int tmp = array[1];
        array[1] = int(array[1] ^ 1);
        array[0] = int(array[0] ^ 1);
        int tmp2 = array[1];
        array[1] = tmp;
        array[0] = tmp2;
    }
}
