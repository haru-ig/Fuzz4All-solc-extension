pragma solidity ^0.8.0;
contract ArrayReadings {
    int256 public constant size = 5;
    int256[ ] public array;
    function constructor() public {
        array = [1,2,3,4,5];
    }
    function addNewElement() public {
        array.push(6);
    }
    function changeElement() public {
        array[2] = 9;
    }
    function getElement() public view returns (int256) {
        return array[1];
    }
    function getSize() public view returns (int256) {
        return size;
    }
    function deleteElement() public {
        array.length--;
    }
}
