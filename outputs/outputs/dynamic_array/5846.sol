pragma solidity ^0.8.0;
contract Test1805H {
    uint8[] arr;
    function setA() public {
        uint8 a;
    }
    constructor(uint8 _a) public {
        arr[_a] = 1;
    }
    function getA() public view returns (uint8) {
        return arr[_a];
    }
}
