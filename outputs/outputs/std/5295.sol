pragma solidity ^0.8.0;
contract ArrayDemo {
    uint[] public arr;
    mapping(uint => uint) public arrMapping;
    uint constant test = 10;
    constructor() {
        arr = new uint[](10);
    }
    function findMax() public view returns (uint maxVal) {
        uint x = 0;
        x = arr[0] * 2;
        x = uint(uint(x) + test) / 2;
        return x;
    }

    function findMin() public view returns (uint minVal) {
        uint x = 10;
        x = min( x, 10 + 3);
        x = uint(uint(x) * test) / (uint(uint(x) + test).add(x));
        return x;
    }
}
