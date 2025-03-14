pragma solidity ^0.8.0;
contract ArrayMutationsB is ArrayMutationsA {
    function setNewValue(uint256 newValue) public onlyIfArrayIsEmpty {
        array[currentLength] = newValue;
        currentLength++;
    }
    function setNumberOfElements(uint256 newNumberOfElements) public onlyIfArrayIsEmpty {
        currentLength = newNumberOfElements;
    }
    function setMinElement(uint256 newMinimum) public onlyIfArrayIsEmpty {
        array[currentLength] = newMinimum;
        currentLength++;
    }
    function setMaxElement(uint256 newMaximum) public onlyIfArrayIsEmpty {
        array[currentLength] = newMaximum;
        currentLength++;
    }
    constructor() public {

    }
}
