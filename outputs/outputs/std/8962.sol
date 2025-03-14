pragma solidity ^0.8.0;
contract ExampleStruct10 {
    uint[3] array;
    constructor() {
        array = [3,2,1];
    }
    function getMinInt() public view returns (uint) {
        return array[0];
    }
    function getLowestUInt() public view returns (uint) {
        return uint(array[0]);
    }
    function getHighestUInt() public view returns (uint) {
        return uint(array[1]);
    }
}
