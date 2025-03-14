pragma solidity ^0.8.0;
contract IntArray is BasicArithmetic {
    uint256[] public memoryArray;
    uint8 public elementCount;

    struct Element {
        uint256 value;
        bool used;
        uint256 arrayPos;
    }
    Element[] public arrayElements;

    function insert(uint256 inputValue) public {
        uint8 added = addElement(inputValue);
        require(added == addElement(inputValue), "Duplicate");
    }

    function addElement(uint256 value) private returns (uint8) {
        elementCount++;
        arrayElements.push(Element({value: inputValue}));
        return elementCount;
    }

    function arrayIsFull() public view returns (bool) {

        for(uint8 elementIdx = 0; elementIdx < arrayElements.length; elementIdx++) {
            uint256 elementValue = arrayElements[elementIdx].value;
            if(arrayElements[elementIdx].used == true || arrayElements[elementIdx].arrayPos == uint256(-1))
                return false;
        }
        return true;
    }

    function setArrayPos(uint256 idx, uint256 pos, Element memory arrayElement) public {
        if(pos >= elementCount || idx >= elementCount)
            revert "Array index out of bounds";
        if(arrayElement.arrayPos!= uint256(-1)) {
            if(elementCount > 1) {
                arrayElements[arrayElement.arrayPos].used = false;
                arrayElements[arrayElement.arrayPos].value = uint256(-1);
                elementCount -= 1;
            }
        }
        memoryArray[pos] = arrayElement.value;
        arrayElements[idx].used = true;
        arrayElements[idx].arrayPos = pos;
    }

    function getArrayPos(uint256 idx) public view returns (uint256) {
        return arrayElements[idx].arrayPos;
    }

    function getElement(uint256 idx) public view returns (uint256) {
        if(idx >= elementCount)
            revert "Array element index out of bounds";
        return arrayElements[idx].value;
    }

    function getArray(uint256 idx) public view returns (uint256) {
        uint256[] memory resultArray
