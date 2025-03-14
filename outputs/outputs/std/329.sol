pragma solidity ^0.8.0;
contract Test {
    uint256 numberOfElementsInArray;
    function setNumberOfElementsInArray(uint256 numberOfElementsInArray) public {
        this.numberOfElementsInArray = numberOfElementsInArray;
    }
    uint256[] memory arrayOfIntegers;
    function setArrayOfIntegers(uint256[] memory arrayOfIntegers) public {
        this.arrayOfIntegers = arrayOfIntegers;
    }
    function getFirstElementAndLastElement(uint256 min, uint256 max) external view returns (uint256 minElement, uint256 maxElement) {
        minElement = min;
        maxElement = max;
        return (this.arrayOfIntegers[min], this.arrayOfIntegers[max]);
    }
    function setElement(uint256 index, uint256 element) public {
        this.arrayOfIntegers[index] = element;
    }
    function getNumberOfElementsInArray() public view returns (uint256 numberOfElementsInArray) {
        numberOfElementsInArray = this.numberOfElementsInArray;
    }
    function getFirstElement(uint256 min, uint256 max) public view returns (uint256 minElement) {
        minElement = this.arrayOfIntegers[min];
        return (this.arrayOfIntegers[min]);
    }
    function getLastElement(uint256 min, uint256 max) external view returns (uint256 maxElement) {
        uint256 numberOfElementsInArray;
        (minElement, maxElement) = this.getFirstElementAndLastElement(min, max);
        return (this.arrayOfIntegers[max]);
    }
}
