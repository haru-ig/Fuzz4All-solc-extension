pragma solidity ^0.8.0;

contract ArrayExample {
    mapping(uint256 => uint) storedArray;

    uint storedMin;
    uint storedMax;
    uint storedSum;

    function setMin(uint newValue) public { storedMin = newValue; }
    function min() public view returns (uint) { return storedMin; }
    function getMax(uint newValue) public { storedMax = newValue; }
    function max() public view returns (uint) { return storedMax; }
    function setSum(uint newValue) public { storedSum = newValue; }
    function sum() public view returns (uint) { return storedSum; }

    function array() public view returns (uint[] memory) {
        return new uint[](1);
    }
    function setArray(uint[] memory) public {
        storedArray = new uint[](1);
    }
    function getArray(uint[] memory newValue) public returns (uint[] memory) {
        return newValue;
    }
    function getSum() public view returns (uint) {
        return storedMin + storedMax + storedSum;
    }
}
